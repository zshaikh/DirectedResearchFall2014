.class public Lcom/dolphin/browser/core/AppContext;
.super Landroid/content/ContextWrapper;
.source "AppContext.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/AppContext;


# instance fields
.field private b:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 38
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/dolphin/browser/core/AppContext;->b:I

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/dolphin/browser/core/AppContext;->a:Lcom/dolphin/browser/core/AppContext;

    if-nez v0, :cond_0

    .line 19
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/core/AppContext;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/core/AppContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/core/AppContext;->a:Lcom/dolphin/browser/core/AppContext;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance()Lcom/dolphin/browser/core/AppContext;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/dolphin/browser/core/AppContext;->a:Lcom/dolphin/browser/core/AppContext;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/dolphin/browser/core/AppContext;->b:I

    return v0
.end method
