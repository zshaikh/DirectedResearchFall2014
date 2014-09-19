.class public Lcom/bitrhymes/admobext/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# static fields
.field public static final ERROR_EVENT:Ljava/lang/String; = "ERROR_EVENT"

.field public static final ON_DISPLAY_AD_EVENT:Ljava/lang/String; = "ON_DISPLAY_AD_EVENT"

.field public static final ON_RECEIVE_AD_EVENT:Ljava/lang/String; = "ON_RECEIVE_AD_EVENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .parameter "exception"

    .prologue
    .line 14
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 15
    .local v0, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
