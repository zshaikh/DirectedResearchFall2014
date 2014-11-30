.class public Lcom/chartboost/sdk/CBUtility;
.super Ljava/lang/Object;
.source "CBUtility.java"


# static fields
.field private static ANDROID_AUID:Ljava/lang/String; = null

.field public static final ANDROID_AUID_COOKIE_FLAG:I = 0x1

.field public static final ANDROID_AUID_COOKIE_KEY:Ljava/lang/String; = "cb_auid"

.field public static final ANDROID_AUID_COOKIE_PREFIX:Ljava/lang/String; = "android-"

.field public static final AUID_STATIC_EMULATOR:Ljava/lang/String; = "ffff"

.field public static final AUID_STATIC_ERROR:Ljava/lang/String; = "unknown"

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "ChartBoost.cb"

.field public static final PREFERENCES_SDCARD_PATH:Ljava/lang/String; = "/Android/data/com.chartboost.sdk/files"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    sget-object p0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    .line 218
    .end local p0    # "ctx":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 74
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "cookie":Ljava/lang/String;
    const/4 v1, 0x0

    .line 76
    .local v1, "cookiePath":Ljava/io/File;
    const/4 v3, 0x1

    .line 79
    .local v3, "doBackup":Z
    const-string v1, "ChartBoost.cb"

    .line 80
    .end local v1    # "cookiePath":Ljava/io/File;
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 82
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string p0, "cb_auid"

    .end local p0    # "ctx":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-interface {v5, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    .local p0, "value":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 87
    move-object p0, p0

    .end local v0    # "cookie":Ljava/lang/String;
    .local p0, "cookie":Ljava/lang/String;
    move-object v0, p0

    .line 92
    .end local p0    # "cookie":Ljava/lang/String;
    .restart local v0    # "cookie":Ljava/lang/String;
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v1, "/Android/data/com.chartboost.sdk/files"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "ChartBoost.cb"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    .local p0, "cookieUri":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "cookiePath":Ljava/io/File;
    if-nez v0, :cond_8

    .line 102
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "cookieUri":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 110
    new-instance v1, Ljava/lang/StringBuffer;

    const-string p0, ""

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "cookieContent":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v4, "fis":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result p0

    .local p0, "c":I
    const/4 v6, -0x1

    if-ne p0, v6, :cond_2

    .line 118
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .end local p0    # "c":I
    const/16 v4, 0x28

    if-ne p0, v4, :cond_8

    .line 125
    .end local v4    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 127
    .end local v0    # "cookie":Ljava/lang/String;
    .local p0, "cookie":Ljava/lang/String;
    const/4 v0, 0x0

    .line 148
    .end local v1    # "cookieContent":Ljava/lang/StringBuffer;
    .end local v3    # "doBackup":Z
    .local v0, "doBackup":Z
    :goto_2
    if-nez p0, :cond_4

    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    .line 155
    .local p0, "myUUID":Ljava/util/UUID;
    if-nez p0, :cond_3

    .line 158
    const-string p0, "unknown"

    .line 160
    .local p0, "cookie":Ljava/lang/String;
    goto/16 :goto_0

    .line 115
    .local v0, "cookie":Ljava/lang/String;
    .restart local v1    # "cookieContent":Ljava/lang/StringBuffer;
    .restart local v3    # "doBackup":Z
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .local p0, "c":I
    :cond_2
    int-to-char p0, p0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    .end local v1    # "cookieContent":Ljava/lang/StringBuffer;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "c":I
    :catch_0
    move-exception p0

    move-object p0, v0

    .end local v0    # "cookie":Ljava/lang/String;
    .local p0, "cookie":Ljava/lang/String;
    move v0, v3

    .end local v3    # "doBackup":Z
    .local v0, "doBackup":Z
    goto :goto_2

    .line 162
    .local p0, "myUUID":Ljava/util/UUID;
    :cond_3
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    .local p0, "cookie":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "android-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "cookie":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    .restart local p0    # "cookie":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "cb_auid"

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    if-eqz v0, :cond_5

    .line 190
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .end local v0    # "doBackup":Z
    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 196
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 198
    .local v0, "filewriter":Ljava/io/FileWriter;
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 216
    .end local v0    # "filewriter":Ljava/io/FileWriter;
    :cond_5
    :goto_4
    sput-object p0, Lcom/chartboost/sdk/CBUtility;->ANDROID_AUID:Ljava/lang/String;

    goto/16 :goto_0

    .line 181
    .local v0, "doBackup":Z
    :cond_6
    const-string p0, "unknown"

    .line 183
    goto/16 :goto_0

    .line 193
    .end local v0    # "doBackup":Z
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 207
    :catch_1
    move-exception v0

    goto :goto_4

    .end local p0    # "cookie":Ljava/lang/String;
    .local v0, "cookie":Ljava/lang/String;
    .restart local v3    # "doBackup":Z
    :cond_8
    move-object p0, v0

    .end local v0    # "cookie":Ljava/lang/String;
    .restart local p0    # "cookie":Ljava/lang/String;
    move v0, v3

    .end local v3    # "doBackup":Z
    .local v0, "doBackup":Z
    goto :goto_2
.end method
