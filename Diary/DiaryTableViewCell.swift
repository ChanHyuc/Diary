import UIKit

class DiaryTableViewCell: UITableViewCell {
    private let titleLabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "테스트 제목"
        return label
    }()
    
    private let creationDateLabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2024년 10월 28일"
        return label
    }()
    
    private let textPreviewLabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "테스트 미리보기"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        addSubview(titleLabel)
        addSubview(creationDateLabel)
        addSubview(textPreviewLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            creationDateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            creationDateLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            textPreviewLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            textPreviewLabel.leadingAnchor.constraint(equalTo: creationDateLabel.trailingAnchor, constant: 5)
        ])
    }
    
}
