.class public Lcom/dolphin/browser/extensions/f;
.super Ljava/lang/Object;
.source "DolphinPackage.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected final g:Landroid/content/Context;

.field protected final h:Ljava/lang/String;

.field protected i:Landroid/content/pm/PackageInfo;

.field private final j:Landroid/content/res/Resources;

.field private final k:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/dolphin/browser/extensions/f;->g:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/dolphin/browser/extensions/f;->i:Landroid/content/pm/PackageInfo;

    .line 139
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    .line 140
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/dolphin/browser/extensions/f;->d:I

    .line 141
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->e:Ljava/lang/String;

    .line 142
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->k:Landroid/content/pm/ApplicationInfo;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->j:Landroid/content/res/Resources;

    .line 144
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/dolphin/browser/extensions/f;->f:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/dolphin/browser/extensions/f;->a:Landroid/graphics/drawable/Drawable;

    .line 164
    iput-object p1, p0, Lcom/dolphin/browser/extensions/f;->g:Landroid/content/Context;

    .line 165
    iput-object p4, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/dolphin/browser/extensions/f;->b:Ljava/lang/String;

    .line 167
    iput-object p6, p0, Lcom/dolphin/browser/extensions/f;->c:Ljava/lang/String;

    .line 168
    iput p7, p0, Lcom/dolphin/browser/extensions/f;->d:I

    .line 169
    iput-object p8, p0, Lcom/dolphin/browser/extensions/f;->e:Ljava/lang/String;

    .line 170
    iput-object p9, p0, Lcom/dolphin/browser/extensions/f;->j:Landroid/content/res/Resources;

    .line 171
    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->i:Landroid/content/pm/PackageInfo;

    .line 172
    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->k:Landroid/content/pm/ApplicationInfo;

    .line 173
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->j:Landroid/content/res/Resources;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    const-string v1, "string"

    iget-object v2, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 183
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 202
    const-string v0, "package"

    iget-object v1, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 205
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    :cond_0
    invoke-static {p1, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 208
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 217
    instance-of v0, p1, Lcom/dolphin/browser/extensions/f;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    check-cast p1, Lcom/dolphin/browser/extensions/f;

    iget-object v1, p1, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->j:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/f;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->f:Ljava/lang/String;

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->f:Ljava/lang/String;

    .line 62
    const-string v0, "Can\'t find application\'s label, use packagename instead"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->j:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/f;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->a:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->a:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->a:Landroid/graphics/drawable/Drawable;

    .line 77
    const-string v0, "Can\'t find application\'s icon, use system default instead"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "short_description"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/f;->b:Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()Landroid/content/Context;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->g:Landroid/content/Context;

    return-object v0
.end method

.method protected r()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/extensions/f;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
