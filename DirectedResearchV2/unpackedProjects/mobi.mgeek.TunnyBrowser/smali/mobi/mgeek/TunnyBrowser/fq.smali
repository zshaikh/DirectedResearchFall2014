.class Lmobi/mgeek/TunnyBrowser/fq;
.super Landroid/widget/LinearLayout;
.source "PrivateModeSettingsActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;

.field private b:Landroid/widget/CheckedTextView;

.field private c:Lcom/dolphin/browser/extensions/n;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fq;->a:Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;

    .line 59
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0, p2}, Lmobi/mgeek/TunnyBrowser/fq;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300e1

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/fq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fq;->b:Landroid/widget/CheckedTextView;

    .line 66
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fq;->b:Landroid/widget/CheckedTextView;

    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fq;->b:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fq;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 77
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fq;->c:Lcom/dolphin/browser/extensions/n;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fq;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/n;Z)V

    .line 78
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fq;->c:Lcom/dolphin/browser/extensions/n;

    .line 71
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fq;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fq;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 73
    return-void
.end method
