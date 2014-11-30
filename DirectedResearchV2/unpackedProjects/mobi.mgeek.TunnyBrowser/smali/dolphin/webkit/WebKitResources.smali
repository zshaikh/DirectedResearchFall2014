.class public Ldolphin/webkit/WebKitResources;
.super Ljava/lang/Object;
.source "WebKitResources.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static sResourcesContext:Landroid/content/Context;

.field private static sResourcesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method private static checkInitialized()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call WebKitResources.setResources(Resources, String) before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    return-void
.end method

.method public static getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ldolphin/webkit/WebKitResources;->checkInitialized()V

    .line 61
    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeLibPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Ldolphin/webkit/WebKitResources;->checkInitialized()V

    .line 76
    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ldolphin/webkit/WebKitResources;->checkInitialized()V

    .line 56
    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getResourcesContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Ldolphin/webkit/WebKitResources;->checkInitialized()V

    .line 66
    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getResourcesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Ldolphin/webkit/WebKitResources;->checkInitialized()V

    .line 71
    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getText(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(ILandroid/util/TypedValue;Z)V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 109
    return-void
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, v0}, Ldolphin/webkit/WebKitResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Ldolphin/webkit/WebKitResources;->checkInitialized()V

    .line 90
    sget-object v0, Ldolphin/webkit/WebKitResources;->sResourcesContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setResources(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    sput-object p0, Ldolphin/webkit/WebKitResources;->sResourcesContext:Landroid/content/Context;

    .line 44
    sput-object p1, Ldolphin/webkit/WebKitResources;->sResourcesPath:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebKitResources.setResources - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/util/Log;->i(Ljava/lang/String;)I

    .line 46
    return-void
.end method
