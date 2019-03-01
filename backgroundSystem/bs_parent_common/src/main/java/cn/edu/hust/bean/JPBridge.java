package cn.edu.hust.bean;

public class JPBridge {

    private int jpid;
    private String uuid;
    private String inputMessage;
    private String responseMessage;
    private int solved;

    public int getJpid() {
        return jpid;
    }

    public void setJpid(int jpid) {
        this.jpid = jpid;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getInputMessage() {
        return inputMessage;
    }

    public void setInputMessage(String inputMessage) {
        this.inputMessage = inputMessage;
    }

    public String getResponseMessage() {
        return responseMessage;
    }

    public void setResponseMessage(String responseMessage) {
        this.responseMessage = responseMessage;
    }

    public int getSolved() {
        return solved;
    }

    public void setSolved(int solved) {
        this.solved = solved;
    }
}
