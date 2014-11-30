.class public Lcom/gamesys/android/tools/ane/misc/locale/LocaleLanguageCodeFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "LocaleLanguageCodeFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/gamesys/android/tools/ane/misc/locale/LocaleLanguageCodeFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/locale/LocaleLanguageCodeFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 26
    invoke-static {}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getUserLocaleLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "cc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 29
    .local v2, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 33
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v3, Lcom/gamesys/android/tools/ane/misc/locale/LocaleLanguageCodeFunction;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert the user preferred language code <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> into a FRE object"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
