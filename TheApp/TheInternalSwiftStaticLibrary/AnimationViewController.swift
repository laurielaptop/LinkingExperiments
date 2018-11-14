//
//  AnimationViewController.swift
//  TheInternalSwiftStaticLibrary
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import UIKit

private extension String {
    var image: UIImage? {
        let size = CGSize(width: 16, height: 16)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.white.set()
        let rect = CGRect(origin: .zero, size: size)
        UIRectFill(CGRect(origin: .zero, size: size))
        (self as AnyObject).draw(in: rect, withAttributes: [.font: UIFont.systemFont(ofSize: 16)])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

open class AnimationViewController: UIViewController {
    
    // MARK: - Controller Properties

    private let rootLayer = CALayer()
    private let emitterLayer = CAEmitterLayer()
    private let emitterCell = CAEmitterCell()
    private let trailCell = CAEmitterCell()
    private let fireworkCell = CAEmitterCell()
    
    // MARK: - View Lifecycle

    override open func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Animation View"

        setupEmitterLayer()
        setupEmitterCell()
        setupTrailCell()
        setupFireworkCell()
        
        emitterCell.emitterCells = [trailCell, fireworkCell]
        emitterLayer.emitterCells = [emitterCell]
        view.layer.addSublayer(emitterLayer)
        
    }
    
    // MARK: - Controller Methods

    private func setupEmitterLayer() {
        let bounds = self.view.bounds
        emitterLayer.emitterSize = bounds.size
        emitterLayer.emitterPosition = CGPoint(x: bounds.width / 2, y: 0)
        emitterLayer.renderMode = .additive
    }
    
    private func setupEmitterCell() {
        emitterCell.color = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5).cgColor
        emitterCell.redRange = 0.9
        emitterCell.greenRange = 0.9
        emitterCell.blueRange = 0.9
        emitterCell.lifetime = 2.5
        emitterCell.birthRate = 5
        emitterCell.velocity = 300
        emitterCell.velocityRange = 100
        emitterCell.emissionRange = CGFloat.pi / 4
        emitterCell.emissionLongitude = CGFloat.pi / 2
        emitterCell.yAcceleration = 100
    }
    
    private func setupTrailCell() {
        trailCell.contents = "👽".image?.cgImage
        trailCell.lifetime = 0.5
        trailCell.birthRate = 45
        trailCell.velocity = 80
        trailCell.scale = 0.4
        trailCell.alphaSpeed = -0.7
        trailCell.scaleSpeed = -0.1
        trailCell.scaleRange = 0.1
        trailCell.beginTime = 0.01
        trailCell.duration = 1.7
        trailCell.emissionRange = CGFloat.pi / 8
        trailCell.emissionLongitude = CGFloat.pi * 2
        trailCell.yAcceleration = -350;
    }
    
    private func setupFireworkCell() {
        fireworkCell.contents = "👽".image?.cgImage
        fireworkCell.lifetime = 5
        fireworkCell.birthRate = 200
        fireworkCell.velocity = 130
        fireworkCell.scale = 0.6
        fireworkCell.spin = 2
        fireworkCell.alphaSpeed = -0.2
        fireworkCell.scaleSpeed = -0.1
        fireworkCell.beginTime = 1.5
        fireworkCell.duration = 0.1
        fireworkCell.emissionRange = CGFloat.pi * 2
        fireworkCell.yAcceleration = -80
    }
    
}
