.class public Lcom/mgeek/android/util/UpdateActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "UpdateActivity.java"


# instance fields
.field private a:Z

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x5

    const/4 v5, -0x2

    .line 103
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0x118

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mgeek/android/util/UpdateActivity;->b:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/mgeek/android/util/UpdateActivity;->b:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 111
    iget-object v2, p0, Lcom/mgeek/android/util/UpdateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 114
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    const/high16 v3, 0x3f800000

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    const/16 v3, 0x14

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 126
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 127
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mgeek/android/util/UpdateActivity;->c:Landroid/widget/Button;

    .line 128
    iget-object v3, p0, Lcom/mgeek/android/util/UpdateActivity;->c:Landroid/widget/Button;

    const-string v4, "Update"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, p0, Lcom/mgeek/android/util/UpdateActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v3, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 132
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mgeek/android/util/UpdateActivity;->d:Landroid/widget/Button;

    .line 133
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    const/16 v4, 0x1e

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 137
    iget-object v4, p0, Lcom/mgeek/android/util/UpdateActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-object v0
.end method

.method static synthetic a(Lcom/mgeek/android/util/UpdateActivity;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/mgeek/android/util/UpdateActivity;->a:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/mgeek/android/util/UpdateActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/util/UpdateActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/mgeek/android/util/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    const-string v0, "UpdateNote"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const/16 v2, 0xd

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/mgeek/android/util/UpdateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const-string v0, "Title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/mgeek/android/util/UpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const-string v0, "DownloadUrl"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/mgeek/android/util/UpdateActivity;->c:Landroid/widget/Button;

    new-instance v3, Lcom/mgeek/android/util/v;

    invoke-direct {v3, p0, v0}, Lcom/mgeek/android/util/v;-><init>(Lcom/mgeek/android/util/UpdateActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const-string v0, "ForceUpdate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgeek/android/util/UpdateActivity;->a:Z

    .line 80
    iget-boolean v0, p0, Lcom/mgeek/android/util/UpdateActivity;->a:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/mgeek/android/util/UpdateActivity;->d:Landroid/widget/Button;

    const-string v1, "Exit"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/mgeek/android/util/UpdateActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/mgeek/android/util/w;

    invoke-direct {v1, p0}, Lcom/mgeek/android/util/w;-><init>(Lcom/mgeek/android/util/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/util/UpdateActivity;->d:Landroid/widget/Button;

    const-string v1, "Ignore"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/mgeek/android/util/UpdateActivity;->a:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
