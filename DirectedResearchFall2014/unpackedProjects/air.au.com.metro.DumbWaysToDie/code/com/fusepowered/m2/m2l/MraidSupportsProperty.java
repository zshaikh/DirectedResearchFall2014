package com.fusepowered.m2.m2l;

class MraidSupportsProperty extends MraidProperty
{
    private boolean calendar;
    private boolean inlineVideo;
    private boolean sms;
    private boolean storePicture;
    private boolean tel;
    
    @Override
    public String toJsonPair() {
        return "supports: {sms: " + String.valueOf(this.sms) + ", " + "tel: " + String.valueOf(this.tel) + ", " + "calendar: " + String.valueOf(this.calendar) + ", " + "storePicture: " + String.valueOf(this.storePicture) + ", " + "inlineVideo: " + String.valueOf(this.inlineVideo) + "}";
    }
    
    public MraidSupportsProperty withCalendar(final boolean calendar) {
        this.calendar = calendar;
        return this;
    }
    
    public MraidSupportsProperty withInlineVideo(final boolean inlineVideo) {
        this.inlineVideo = inlineVideo;
        return this;
    }
    
    public MraidSupportsProperty withSms(final boolean sms) {
        this.sms = sms;
        return this;
    }
    
    public MraidSupportsProperty withStorePicture(final boolean storePicture) {
        this.storePicture = storePicture;
        return this;
    }
    
    public MraidSupportsProperty withTel(final boolean tel) {
        this.tel = tel;
        return this;
    }
}
