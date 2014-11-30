.class Landroid/support/d;
.super Landroid/support/b;
.source "ClipboardManagerCompat.java"


# instance fields
.field private a:Landroid/text/ClipboardManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/b;-><init>()V

    .line 39
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Landroid/support/d;->a:Landroid/text/ClipboardManager;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/support/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/d;->a:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/d;->a:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/d;->a:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method
