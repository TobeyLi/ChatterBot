package cn.edu.hust.bean;

public class KnowledgeBase {

    private Integer docId;
    private Integer labelId;
    private String docName;
    private String docLocaton;
    private String docType;
    private String addTime;
    private boolean recommend;

    public Integer getDocId() {
        return docId;
    }

    public void setDocId(Integer docId) {
        this.docId = docId;
    }

    public Integer getLabelId() {
        return labelId;
    }

    public void setLabelId(Integer labelId) {
        this.labelId = labelId;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getDocLocaton() {
        return docLocaton;
    }

    public void setDocLocaton(String docLocaton) {
        this.docLocaton = docLocaton;
    }

    public String getDocType() {
        return docType;
    }

    public void setDocType(String docType) {
        this.docType = docType;
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }

    public boolean isRecommend() {
        return recommend;
    }

    public void setRecommend(boolean recommend) {
        this.recommend = recommend;
    }
}
