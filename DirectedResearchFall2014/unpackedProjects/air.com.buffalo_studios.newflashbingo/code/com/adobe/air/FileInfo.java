package com.adobe.air;

class FileInfo
{
    public long mFileSize;
    public boolean mIsDirectory;
    public boolean mIsFile;
    
    FileInfo(final long mFileSize, final boolean mIsFile, final boolean mIsDirectory) {
        super();
        this.mFileSize = mFileSize;
        this.mIsFile = mIsFile;
        this.mIsDirectory = mIsDirectory;
    }
}
