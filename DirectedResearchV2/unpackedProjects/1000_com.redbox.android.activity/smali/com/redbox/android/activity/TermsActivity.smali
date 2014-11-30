.class public Lcom/redbox/android/activity/TermsActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "TermsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;
    }
.end annotation


# instance fields
.field activityTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v5, 0x7f030017

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->setContentView(I)V

    .line 22
    const v5, 0x7f070044

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/redbox/android/view/HeaderView;

    .line 23
    .local v1, "headerView":Lcom/redbox/android/view/HeaderView;
    invoke-virtual {v1}, Lcom/redbox/android/view/HeaderView;->setDoneButton()V

    .line 25
    const v5, 0x7f070029

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/redbox/android/activity/TermsActivity;->activityTitle:Landroid/widget/TextView;

    .line 26
    iget-object v5, p0, Lcom/redbox/android/activity/TermsActivity;->activityTitle:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 27
    const-string v5, "Title View Null"

    invoke-static {p0, v5}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v5, p0, Lcom/redbox/android/activity/TermsActivity;->activityTitle:Landroid/widget/TextView;

    const v6, 0x7f050023

    invoke-virtual {p0, v6}, Lcom/redbox/android/activity/TermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v5, p0, Lcom/redbox/android/activity/TermsActivity;->activityTitle:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    const v5, 0x7f070002

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 34
    const v5, 0x7f07002c

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 35
    .local v0, "doneBtn":Landroid/widget/ImageButton;
    new-instance v5, Lcom/redbox/android/activity/TermsActivity$1;

    invoke-direct {v5, p0}, Lcom/redbox/android/activity/TermsActivity$1;-><init>(Lcom/redbox/android/activity/TermsActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v5, 0x7f070093

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 44
    .local v3, "resTermsBtn":Landroid/widget/ImageButton;
    const v5, 0x7f070094

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 46
    .local v2, "rbTermsBtn":Landroid/widget/ImageButton;
    const v5, 0x7f070092

    invoke-virtual {p0, v5}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 47
    .local v4, "w":Landroid/webkit/WebView;
    new-instance v5, Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;-><init>(Lcom/redbox/android/activity/TermsActivity;Lcom/redbox/android/activity/TermsActivity$TermsWebViewClient;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    const-string v5, "http://www.redbox.com/m/Terms.mvc"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    const v5, 0x7f02002a

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 50
    const v5, 0x7f02002f

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 53
    new-instance v5, Lcom/redbox/android/activity/TermsActivity$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/redbox/android/activity/TermsActivity$2;-><init>(Lcom/redbox/android/activity/TermsActivity;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v5, Lcom/redbox/android/activity/TermsActivity$3;

    invoke-direct {v5, p0, v2, v3}, Lcom/redbox/android/activity/TermsActivity$3;-><init>(Lcom/redbox/android/activity/TermsActivity;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
