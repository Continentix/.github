// Path: /Users/apple/Projects/continentix/org-profile/profile/render-svg.swift
// Purpose: Rasterise an SVG to a PNG with a real alpha channel at an exact pixel size (qlmanage flattens alpha)
// Loaded by: `swift render-svg.swift <in.svg> <out.png> <width> <height>`
import AppKit

let args = CommandLine.arguments
guard args.count == 5, let w = Int(args[3]), let h = Int(args[4]) else {
    FileHandle.standardError.write("usage: render-svg.swift <in.svg> <out.png> <width> <height>\n".data(using: .utf8)!)
    exit(2)
}
guard let image = NSImage(contentsOfFile: args[1]) else {
    FileHandle.standardError.write("cannot load \(args[1])\n".data(using: .utf8)!)
    exit(1)
}
guard let rep = NSBitmapImageRep(
    bitmapDataPlanes: nil, pixelsWide: w, pixelsHigh: h, bitsPerSample: 8,
    samplesPerPixel: 4, hasAlpha: true, isPlanar: false,
    colorSpaceName: .deviceRGB, bytesPerRow: 0, bitsPerPixel: 0
) else { exit(1) }
rep.size = NSSize(width: w, height: h)

NSGraphicsContext.saveGraphicsState()
let ctx = NSGraphicsContext(bitmapImageRep: rep)!
NSGraphicsContext.current = ctx
ctx.cgContext.clear(CGRect(x: 0, y: 0, width: w, height: h))
ctx.imageInterpolation = .high
image.draw(in: NSRect(x: 0, y: 0, width: w, height: h),
           from: .zero, operation: .sourceOver, fraction: 1.0)
NSGraphicsContext.restoreGraphicsState()

guard let png = rep.representation(using: .png, properties: [:]) else { exit(1) }
try! png.write(to: URL(fileURLWithPath: args[2]))
print("\(args[2]) \(w)x\(h) alpha=true")

// === АННОТАЦИЯ (RU) ===
// Назначение файла: растеризатор SVG → PNG с настоящим альфа-каналом и точным
//   размером. Нужен потому, что qlmanage делает квадратные превью и заливает
//   прозрачность белым, а headless Chrome/Playwright в этой среде виснут.
// Что внутри: NSImage грузит SVG (CoreSVG, macOS 11+), рисуем в NSBitmapImageRep
//   с hasAlpha после clear() → PNG.
// Куда ставится: /Users/apple/Projects/continentix/org-profile/profile/render-svg.swift
// Кто редактирует: Vitalii.
