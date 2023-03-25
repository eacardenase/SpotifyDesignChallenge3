//
//  ViewController.swift
//  SpotifyDesignChallenge3
//
//  Created by Edwin Cardenas on 3/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        setupViews()
    }
}

extension ViewController {
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        let rowView = RowView(labelText: "Offline", isOn: false)
        let offlineLabel = Factory.makeSecondaryLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfadeView = CrossfadeView()
        
        let gaplessRow = RowView(labelText: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(labelText: "Hide Unplayable Songs", isOn: true)
        let normalizationRow = RowView(labelText: "Enable Audio Normalization", isOn: true)

        rowView.translatesAutoresizingMaskIntoConstraints = false
        offlineLabel.translatesAutoresizingMaskIntoConstraints = false
        crossfadeView.translatesAutoresizingMaskIntoConstraints = false
        gaplessRow.translatesAutoresizingMaskIntoConstraints = false
        hideSongsRow.translatesAutoresizingMaskIntoConstraints = false
        normalizationRow.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(rowView)
        view.addSubview(offlineLabel)
        view.addSubview(crossfadeView)
        view.addSubview(gaplessRow)
        view.addSubview(hideSongsRow)
        view.addSubview(normalizationRow)

        NSLayoutConstraint.activate([
            rowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            rowView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            rowView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
        
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: rowView.bottomAnchor, constant: margin),
            offlineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            offlineLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeView.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: spacing),
            crossfadeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            crossfadeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
        
        NSLayoutConstraint.activate([
            gaplessRow.topAnchor.constraint(equalTo: crossfadeView.bottomAnchor, constant: margin),
            gaplessRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            gaplessRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
        
        NSLayoutConstraint.activate([
            hideSongsRow.topAnchor.constraint(equalTo: gaplessRow.bottomAnchor, constant: margin),
            hideSongsRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            hideSongsRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
        
        NSLayoutConstraint.activate([
            normalizationRow.topAnchor.constraint(equalTo: hideSongsRow.bottomAnchor, constant: margin),
            normalizationRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            normalizationRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
    }
}
