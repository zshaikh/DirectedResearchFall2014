.class public Lcom/bitrhymes/iab/functions/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParserError"
    }
.end annotation


# static fields
.field static freContextObj:Lcom/adobe/fre/FREContext;

.field static inAppActivity:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/bitrhymes/iab/functions/Utils;->inAppActivity:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    .line 19
    sput-object v0, Lcom/bitrhymes/iab/functions/Utils;->freContextObj:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .parameter "exception"

    .prologue
    .line 13
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 14
    .local v0, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFREContext()Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/bitrhymes/iab/functions/Utils;->freContextObj:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public static getInAppActivity()Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/bitrhymes/iab/functions/Utils;->inAppActivity:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    return-object v0
.end method

.method public static setFREContextObj(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 22
    sput-object p0, Lcom/bitrhymes/iab/functions/Utils;->freContextObj:Lcom/adobe/fre/FREContext;

    .line 23
    return-void
.end method

.method public static setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 34
    sput-object p0, Lcom/bitrhymes/iab/functions/Utils;->inAppActivity:Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    .line 35
    return-void
.end method
