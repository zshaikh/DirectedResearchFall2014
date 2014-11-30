.class public Lcom/appoxee/example/APIUI;
.super Landroid/app/Activity;
.source "APIUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .local v3, "layout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "addAlias":Landroid/widget/Button;
    const-string v4, "Alias test"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v4, Lcom/appoxee/example/APIUI$1;

    invoke-direct {v4, p0}, Lcom/appoxee/example/APIUI$1;-><init>(Lcom/appoxee/example/APIUI;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "addTag":Landroid/widget/Button;
    const-string v4, "Tags test"

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v4, Lcom/appoxee/example/APIUI$2;

    invoke-direct {v4, p0}, Lcom/appoxee/example/APIUI$2;-><init>(Lcom/appoxee/example/APIUI;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "att":Landroid/widget/Button;
    const-string v4, "Attributes test"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v4, Lcom/appoxee/example/APIUI$3;

    invoke-direct {v4, p0}, Lcom/appoxee/example/APIUI$3;-><init>(Lcom/appoxee/example/APIUI;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0, v3}, Lcom/appoxee/example/APIUI;->setContentView(Landroid/view/View;)V

    .line 155
    return-void
.end method
