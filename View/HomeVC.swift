//
//  ViewController.swift
//  Heal
//
//  Created by Fatih Oğuz on 19.08.2024.
//

import UIKit
import UICircularProgressRing

class HomeVC: UIViewController {
    
    
    // ScrollView ve ContentView tanımları
    private let addScrollView = UIScrollView()
    private let contentView = UIView()
    
    // Renkleri sabit olarak tanımlamak
    private let buttonBackgroundColor = UIColor(red: 0.15, green: 0.70, blue: 0.70, alpha: 0.3)
    private let circularColor = UIColor(red: 0.15, green: 0.70, blue: 0.70, alpha: 0.6)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        
    }
    
    // Kullanıcı arayüzünü kurar
    private func setupUI() {
        setupScrollView()
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 30),
            trailingAnchor: (contentView.trailingAnchor, -265),
            topAnchor: (contentView.topAnchor, 120),
            heightConstant: 40,
            corner: 5,
            topText: "Daily",
            centerText: "",
            underText: "",
            imageText: "",
            textSize: UIFont.systemFont(ofSize: 15),
            detailsText: "",
            boldText: "",
            normalText: "",
            smallText: ""
        )
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 147),
            trailingAnchor: (contentView.trailingAnchor, -147),
            topAnchor: (contentView.topAnchor, 120),
            heightConstant: 40,
            corner: 5,
            topText: "Weekly",
            centerText: "",
            underText: "",
            imageText: "",
            textSize: UIFont.systemFont(ofSize: 15),
            detailsText: "",
            boldText: "",
            normalText: "",
            smallText: "")
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 265),
            trailingAnchor: (contentView.trailingAnchor, -30),
            topAnchor: (contentView.topAnchor, 120),
            heightConstant: 40,
            corner: 5,
            topText: "Monthly",
            centerText: "",
            underText: "",
            imageText: "",
            textSize: UIFont.systemFont(ofSize: 15),
            detailsText: "",
            boldText: "",
            normalText: "",
            smallText: "")
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 30),
            trailingAnchor: (contentView.trailingAnchor, -30),
            topAnchor: (contentView.topAnchor, 190),
            heightConstant: 270,
            corner: 15,
            topText: "",
            centerText: "Sleep Analysis",
            underText: "",
            imageText: "sleep",
            textSize: UIFont.boldSystemFont(ofSize: 23),
            detailsText: "",
            boldText: "7h 30m",
            normalText: "Sleep Duration",
            smallText: " Slightly better than yesterday")
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 30),
            trailingAnchor: (contentView.trailingAnchor, -205),
            topAnchor: (contentView.topAnchor, 480),
            heightConstant: 130,
            corner: 20,
            topText: "",
            centerText: "",
            underText: "More Self love & Fulfilment",
            imageText: "life",
            textSize: UIFont.boldSystemFont(ofSize: 15),
            detailsText: "",
            boldText: "",
            normalText: "",
            smallText: "")
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 205),
            trailingAnchor: (contentView.trailingAnchor, -30),
            topAnchor: (contentView.topAnchor, 480),
            heightConstant: 130,
            corner: 20,
            topText: "",
            centerText: "",
            underText: "1698kcal",
            imageText: "bread",
            textSize: UIFont.boldSystemFont(ofSize: 17),
            detailsText: "Consumed",
            boldText: "",
            normalText: "",
            smallText: "")
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 30),
            trailingAnchor: (contentView.trailingAnchor, -205),
            topAnchor: (contentView.topAnchor, 630),
            heightConstant: 130,
            corner: 20,
            topText: "",
            centerText: "",
            underText: "80bpm",
            imageText: "v1",
            textSize: UIFont.boldSystemFont(ofSize: 17),
            detailsText: "Avg Heart rate",
            boldText: "",
            normalText: "",
            smallText: "")
        
        addButton(
            leadingAnchor: (contentView.leadingAnchor, 205),
            trailingAnchor: (contentView.trailingAnchor, -30),
            topAnchor: (contentView.topAnchor, 630),
            heightConstant: 130,
            corner: 20,
            topText: "",
            centerText: "",
            underText: "350kcal",
            imageText: "v2",
            textSize: UIFont.boldSystemFont(ofSize: 17),
            detailsText: "Burned",
            boldText: "",
            normalText: "",
            smallText: "")
        
        label(
            title: "Hey Fatih,",
            font: UIFont.boldSystemFont(ofSize: 40),
            leadingAnchor: (contentView.leadingAnchor, 30),
            trailingAnchor: (contentView.trailingAnchor, -150),
            topAnchor: (contentView.topAnchor, 10))
        
        addContentLabel()
      
        
  
        
    }
    
    // ScrollView ve ContentView için Auto Layout kurar
    private func setupScrollView() {
        addScrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(addScrollView)
        
        NSLayoutConstraint.activate([
            addScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            addScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            addScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            addScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addScrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: addScrollView.contentLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: addScrollView.contentLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: addScrollView.contentLayoutGuide.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: addScrollView.contentLayoutGuide.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: addScrollView.frameLayoutGuide.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 800)
        ])
        
        
    }
    
    // Buton oluşturur ve yerleşim kısıtlamalarını uygular title: String,
    private func addButton(
        leadingAnchor: (anchor: NSLayoutXAxisAnchor,constant: CGFloat),
        trailingAnchor: (anchor: NSLayoutXAxisAnchor, constant: CGFloat),
        topAnchor: (anchor: NSLayoutYAxisAnchor, constant: CGFloat),
        heightConstant: CGFloat,
        corner: Int,
        topText: String,
        centerText: String,
        underText: String,
        imageText: String,
        textSize: UIFont,
        detailsText: String,
        boldText: String,
        normalText: String,
        smallText: String
    ) {
        
        let button = UIButton()
        button.layer.cornerRadius = CGFloat(corner)
        button.layer.masksToBounds = true
        button.backgroundColor = buttonBackgroundColor
        button.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(button)
        
        let topLabel = UILabel()
        topLabel.text = topText
        topLabel.textAlignment = .center
        topLabel.textColor = .black
        topLabel.font = textSize
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(topLabel)
        topLabel.numberOfLines = 0
        
        //label in arasini acma
        let centerLabel = UILabel()
        let attributedString = NSMutableAttributedString(string: centerText)
        let letterSpacing: CGFloat = 0.4
        attributedString.addAttribute(.kern, value: letterSpacing, range: NSRange(location: 0, length: centerText.count))
        centerLabel.attributedText = attributedString
        centerLabel.text = centerText
        centerLabel.textAlignment = .center
        centerLabel.textColor = .black
        centerLabel.font = textSize
        centerLabel.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(centerLabel)
        centerLabel.numberOfLines = 0
        
        let underLabel = UILabel()
        underLabel.text = underText
        underLabel.textAlignment = .left
        underLabel.textColor = .black
        underLabel.font = textSize
        underLabel.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(underLabel)
        underLabel.numberOfLines = 0
        
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: imageText)
        imageView.layer.cornerRadius = 20
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        
        let detailsLabel = UILabel()
        detailsLabel.text = detailsText
        detailsLabel.textAlignment = .left
        detailsLabel.textColor = .darkGray
        detailsLabel.font = UIFont.systemFont(ofSize: 12)
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(detailsLabel)
        detailsLabel.numberOfLines = 0
        
        let boldLabel = UILabel()
        boldLabel.text = boldText
        boldLabel.textAlignment = .left
        boldLabel.textColor = .black
        boldLabel.font = UIFont.boldSystemFont(ofSize: 25)
        boldLabel.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(boldLabel)
        boldLabel.numberOfLines = 0
        
        let normalLabel = UILabel()
        normalLabel.text = normalText
        normalLabel.textAlignment = .left
        normalLabel.textColor = .gray
        normalLabel.font = UIFont.systemFont(ofSize: 15)
        normalLabel.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(normalLabel)
        normalLabel.numberOfLines = 0
        
        let smallLabel = UILabel()
        smallLabel.text = smallText
        smallLabel.textAlignment = .left
        smallLabel.textColor = .darkGray
        smallLabel.font = UIFont.systemFont(ofSize: 6)
        smallLabel.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(smallLabel)
        smallLabel.numberOfLines = 0
        
        let containerView = UIView()
            containerView.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(containerView)
       
        let circularProgress = CircularProgressView()
        //circularProgress.center = containerView.center
        circularProgress.trackColor = .white
        circularProgress.progressColor = circularColor
        circularProgress.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(circularProgress)
        
        circularProgress.setProgress(to: 0.80, withAnimation: true)
        
        let progressLabel = UILabel()
            progressLabel.translatesAutoresizingMaskIntoConstraints = false
            progressLabel.text = "80.4 %"
            progressLabel.font = UIFont.boldSystemFont(ofSize: 20)
            progressLabel.textColor = .black
            progressLabel.textAlignment = .center
        containerView.addSubview(progressLabel)
        
        NSLayoutConstraint.activate([
            
            button.leadingAnchor.constraint(equalTo: leadingAnchor.anchor, constant: leadingAnchor.constant),
            button.trailingAnchor.constraint(equalTo: trailingAnchor.anchor, constant: trailingAnchor.constant),
            button.topAnchor.constraint(equalTo: topAnchor.anchor, constant: topAnchor.constant),
            button.heightAnchor.constraint(equalToConstant: heightConstant),
            
            imageView.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 35),
            imageView.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -10),
            imageView.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -39),
            imageView.heightAnchor.constraint(equalToConstant: 5),
            
            topLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 5),
            topLabel.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -5),
            topLabel.topAnchor.constraint(equalTo:  button.topAnchor, constant: 10),
            
            centerLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 5),
            centerLabel.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -5),
            centerLabel.topAnchor.constraint(equalTo:  button.topAnchor, constant: 10),
            
            underLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 10),
            underLabel.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -10),
            underLabel.topAnchor.constraint(equalTo:  button.topAnchor, constant: 10),
            
            detailsLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 10),
            detailsLabel.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -10),
            detailsLabel.topAnchor.constraint(equalTo:  button.topAnchor, constant: 31),
            
            boldLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 200),
            boldLabel.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -5),
            boldLabel.topAnchor.constraint(equalTo:  button.topAnchor, constant: 80),
            
            normalLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 192),
            normalLabel.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -5),
            normalLabel.topAnchor.constraint(equalTo:  button.topAnchor, constant: 110),
            
            smallLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 200),
            smallLabel.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -5),
            smallLabel.topAnchor.constraint(equalTo:  button.topAnchor, constant: 132),
            
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -150),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            containerView.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 220),
               containerView.widthAnchor.constraint(equalToConstant: 200),
            containerView.heightAnchor.constraint(equalToConstant: 200),
            
            circularProgress.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 268),
            circularProgress.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            circularProgress.topAnchor.constraint(equalTo:  containerView.topAnchor, constant: 100),
                    circularProgress.widthAnchor.constraint(equalTo: containerView.widthAnchor),
                    circularProgress.heightAnchor.constraint(equalTo: containerView.heightAnchor),
            
            progressLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
                    progressLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])
        
        
        
        // Daha fazla içerik göstermek için bir etiket ekler
        
    }
    
    private func label(title:String, font: UIFont ,leadingAnchor: (anchor: NSLayoutXAxisAnchor, constant: CGFloat), trailingAnchor: (anchor: NSLayoutXAxisAnchor, constant: CGFloat), topAnchor: (anchor: NSLayoutYAxisAnchor, constant: CGFloat)) {
        let label = UILabel()
        label.text = title
        label.textColor = .black
        label.font = font
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor.anchor , constant: leadingAnchor.constant),
            label.trailingAnchor.constraint(equalTo: trailingAnchor.anchor , constant: trailingAnchor.constant),
            label.topAnchor.constraint(equalTo: topAnchor.anchor , constant: topAnchor.constant),
            
        ])
    }
    
    // İçerik etiketi ekler ve konumunu ayarlar
    private func addContentLabel() {
        let secondLabel = UILabel()
        secondLabel.text = ""
        secondLabel.font = UIFont.systemFont(ofSize: 24)
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(secondLabel)
        
        NSLayoutConstraint.activate([
            //secondLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 2000),
            secondLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            secondLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -100),
            
        ])
        
       
   
    }
        private func addImage(){
            func setupFlyView(frame: CGRect, named: String, corner: Int , text: String ) {
                let imageView = UIImageView(frame: frame)
                imageView.image = UIImage(named: named)
                imageView.layer.cornerRadius = CGFloat(corner)
                imageView.layer.masksToBounds = true
                imageView.contentMode = .scaleAspectFill
                view.addSubview(imageView)
                view.bringSubviewToFront(imageView)
                let label = UILabel(frame: CGRect(x: imageView.frame.minX + 20 ,y: imageView.frame.minY + 30,
                                                  width: imageView.frame.width, height: 20))
                label.text = text
                label.textAlignment = .left
                label.textColor = .black
                view.addSubview(label)
                view.bringSubviewToFront(label)
            }
            
        }
        
        
    }
    
    
    


