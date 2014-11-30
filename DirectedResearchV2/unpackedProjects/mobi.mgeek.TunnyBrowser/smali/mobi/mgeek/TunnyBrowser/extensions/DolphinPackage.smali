.class public Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;
.super Landroid/content/ContextWrapper;
.source "DolphinPackage.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field protected b:Ljava/lang/String;

.field protected final c:Landroid/content/Context;

.field protected final d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Landroid/content/res/Resources;

.field private final k:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lmobi/mgeek/TunnyBrowser/extensions/b;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/extensions/b;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->e:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 200
    instance-of v0, p1, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->d:Ljava/lang/String;

    check-cast p1, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;

    iget-object v1, p1, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->k:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->j:Landroid/content/res/Resources;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->a:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->a:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->a:Landroid/graphics/drawable/Drawable;

    .line 112
    const-string v0, "Can\'t find application\'s icon,use system default instead"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->j:Landroid/content/res/Resources;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->b:Ljava/lang/String;

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->d:Ljava/lang/String;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->b:Ljava/lang/String;

    .line 98
    const-string v0, "Can\'t find application\'s label,use packagename instead"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "long_description"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->g:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->j:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "short_description"

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->f:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->j:Landroid/content/res/Resources;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const-string v1, "string"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 140
    iget v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->h:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public uninstall(Landroid/content/Context;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 188
    const-string v0, "package"

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    invoke-static {p1, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 191
    return-void
.end method
