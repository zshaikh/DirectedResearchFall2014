.class public Lcom/dolphin/browser/theme/ThemeInstaller;
.super Landroid/app/Activity;
.source "ThemeInstaller.java"


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private a:Lcom/dolphin/browser/theme/d/d;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private e:Lcom/dolphin/browser/theme/d/h;

.field private f:Lcom/dolphin/browser/theme/d/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Lcom/dolphin/browser/theme/am;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/am;-><init>(Lcom/dolphin/browser/theme/ThemeInstaller;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->e:Lcom/dolphin/browser/theme/d/h;

    .line 104
    new-instance v0, Lcom/dolphin/browser/theme/an;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/an;-><init>(Lcom/dolphin/browser/theme/ThemeInstaller;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->f:Lcom/dolphin/browser/theme/d/i;

    .line 227
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/theme/ThemeInstaller;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeInstaller;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeInstaller;->c(Lcom/dolphin/browser/theme/b/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/dolphin/browser/theme/ThemeInstaller;->d:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private a(Lcom/dolphin/browser/theme/b/a;)Z
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/b/a;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/b/f;->a(Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 173
    :cond_0
    new-instance v1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/b/a;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 175
    new-instance v2, Lcom/dolphin/browser/theme/ap;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/theme/ap;-><init>(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)V

    .line 176
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->j_()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 179
    new-instance v0, Lcom/dolphin/browser/theme/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/ao;-><init>(Lcom/dolphin/browser/theme/ThemeInstaller;)V

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 185
    const v0, 0x7f0e0630

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 186
    const v0, 0x7f0e0631

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 187
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/dolphin/browser/theme/ThemeInstaller;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/dolphin/browser/theme/b/a;)V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setCancelable(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 219
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/b/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 220
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/b/a;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 221
    new-instance v1, Lcom/dolphin/browser/theme/ap;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/theme/ap;-><init>(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)V

    .line 222
    const v2, 0x7f0e0630

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 223
    const v2, 0x7f0e0631

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 225
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeInstaller;->a(Lcom/dolphin/browser/theme/b/a;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/dolphin/browser/theme/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/b/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeInstaller;->b(Lcom/dolphin/browser/theme/b/a;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeInstaller;->finish()V

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object v3, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->b:Landroid/net/Uri;

    .line 58
    const-string v4, "from_download"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    iput-object v2, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->c:Ljava/lang/String;

    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 61
    :goto_1
    if-eqz v2, :cond_1

    move v0, v1

    .line 63
    :cond_1
    new-instance v4, Lcom/dolphin/browser/theme/d/d;

    iget-object v5, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->f:Lcom/dolphin/browser/theme/d/i;

    iget-object v6, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->e:Lcom/dolphin/browser/theme/d/h;

    invoke-direct {v4, v5, v6}, Lcom/dolphin/browser/theme/d/d;-><init>(Lcom/dolphin/browser/theme/d/i;Lcom/dolphin/browser/theme/d/h;)V

    .line 64
    iput-object v4, p0, Lcom/dolphin/browser/theme/ThemeInstaller;->a:Lcom/dolphin/browser/theme/d/d;

    .line 65
    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/dolphin/browser/theme/d/d;->a(Landroid/net/Uri;IZZ)V

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeInstaller;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;)V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 60
    goto :goto_1
.end method
