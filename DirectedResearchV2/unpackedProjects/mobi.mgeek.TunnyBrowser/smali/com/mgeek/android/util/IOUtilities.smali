.class public final Lcom/mgeek/android/util/IOUtilities;
.super Ljava/lang/Object;
.source "IOUtilities.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDir(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;)V

    .line 79
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 0

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 97
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 88
    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 44
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 34
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Ljava/io/File;)V

    .line 67
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 58
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    .line 109
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 0

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 118
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 0

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 127
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 137
    return-void
.end method

.method public static deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 147
    return-void
.end method

.method public static deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 157
    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static ensureDir(Ljava/io/File;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->ensureDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static ensureMkdir(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 160
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->c(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static loadBytes(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readBundleFromStream(Ljava/io/InputStream;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 176
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/InputStream;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static readFileText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static writeBundleToStream(Landroid/os/Bundle;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/os/Bundle;Ljava/io/OutputStream;)V

    .line 173
    return-void
.end method
