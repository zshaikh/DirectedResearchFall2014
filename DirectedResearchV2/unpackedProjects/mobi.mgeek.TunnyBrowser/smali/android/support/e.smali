.class Landroid/support/e;
.super Landroid/support/b;
.source "ClipboardManagerCompat.java"


# instance fields
.field private a:Landroid/content/ClipboardManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/b;-><init>()V

    .line 63
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/support/e;->a:Landroid/content/ClipboardManager;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/support/c;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/support/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/e;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/e;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/e;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method
