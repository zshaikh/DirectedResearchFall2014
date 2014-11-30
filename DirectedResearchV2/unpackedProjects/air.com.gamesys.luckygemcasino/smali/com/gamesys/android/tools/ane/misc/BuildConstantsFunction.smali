.class public Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "BuildConstantsFunction.java"


# static fields
.field private static final ANDROID_VERSION:Ljava/lang/String; = "ANDROID_VERSION"

.field private static final BUILD_MANUFACTURER:Ljava/lang/String; = "MANUFACTURER"

.field private static final BUILD_MODEL:Ljava/lang/String; = "MODEL"

.field private static final BUILD_PRODUCT:Ljava/lang/String; = "PRODUCT"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "constantName":Ljava/lang/String;
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 49
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 61
    .local v1, "constantValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 62
    .local v3, "result":Lcom/adobe/fre/FREObject;
    if-eqz v0, :cond_2

    .line 63
    const-string v4, "MODEL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    invoke-static {}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getBuildModel()Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 79
    :cond_2
    :goto_2
    return-object v3

    .line 49
    .end local v1    # "constantValue":Ljava/lang/String;
    .end local v3    # "result":Lcom/adobe/fre/FREObject;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 53
    .local v2, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v4, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v2    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v2

    .line 55
    .local v2, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v4, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v2    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v2

    .line 57
    .local v2, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;->TAG:Ljava/lang/String;

    const-string v5, "Unable to retrieve action script parameter"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v2    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v1    # "constantValue":Ljava/lang/String;
    .restart local v3    # "result":Lcom/adobe/fre/FREObject;
    :cond_4
    const-string v4, "MANUFACTURER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-static {}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 67
    goto :goto_1

    :cond_5
    const-string v4, "PRODUCT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 68
    invoke-static {}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getBuildProduct()Ljava/lang/String;

    move-result-object v1

    .line 69
    goto :goto_1

    :cond_6
    const-string v4, "ANDROID_VERSION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 75
    :catch_4
    move-exception v2

    .line 76
    .restart local v2    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/tools/ane/misc/BuildConstantsFunction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to convert the build constant <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> into a FRE object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
