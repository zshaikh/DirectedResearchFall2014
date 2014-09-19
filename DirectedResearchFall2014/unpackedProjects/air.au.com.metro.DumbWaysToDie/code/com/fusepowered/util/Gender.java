package com.fusepowered.util;

public enum Gender
{
    FUSE_GENDER_FEMALE(2), 
    FUSE_GENDER_MALE(1), 
    FUSE_GENDER_UNKNOWN(0);
    
    private int genderCode;
    
    private Gender(final int genderCode) {
        this.genderCode = genderCode;
    }
    
    public static Gender getGenderByCode(final int n) {
        switch (n) {
            default: {
                return Gender.FUSE_GENDER_UNKNOWN;
            }
            case 0: {
                return Gender.FUSE_GENDER_UNKNOWN;
            }
            case 1: {
                return Gender.FUSE_GENDER_MALE;
            }
            case 2: {
                return Gender.FUSE_GENDER_FEMALE;
            }
        }
    }
    
    public int getGenderCode() {
        return this.genderCode;
    }
    
    public void setGenderCode(final int genderCode) {
        this.genderCode = genderCode;
    }
}
