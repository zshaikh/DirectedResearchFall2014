.class public Lcom/bitrhymes/fiksu/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# static fields
.field public static final ERROR_EVENT:Ljava/lang/String; = "ERROR_EVENT"

.field public static REFERRER_STRING_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "bingo_fiksu_config.txt"

    sput-object v0, Lcom/bitrhymes/fiksu/AppConstants;->REFERRER_STRING_PATH:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .parameter "exception"

    .prologue
    .line 30
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 31
    .local v0, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeToFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "data"
    .parameter "context"
    .parameter "path"

    .prologue
    .line 19
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 20
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 21
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 22
    .local v1, outputStreamWriter:Ljava/io/OutputStreamWriter;
    invoke-virtual {v1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 25
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Exception"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File write failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
