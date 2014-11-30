.class Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
.super Landroid/widget/RelativeLayout;
.source "ComplexVideoPlayerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Controls"
.end annotation


# instance fields
.field private close:Landroid/widget/Button;

.field private customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

.field private duration:Landroid/widget/TextView;

.field private elapsed:Landroid/widget/TextView;

.field private playPause:Landroid/widget/Button;

.field private progressLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 623
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->this$0:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .line 624
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 616
    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    .line 617
    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    .line 618
    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    .line 619
    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    .line 620
    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    .line 621
    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    .line 625
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setupLayout()V

    .line 626
    invoke-direct {p0, p2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->createCloseButton(Landroid/content/Context;)V

    .line 627
    invoke-direct {p0, p2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->createProgressLayout(Landroid/content/Context;)V

    .line 628
    invoke-direct {p0, p2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->createCustomProgressBar(Landroid/content/Context;)V

    .line 629
    return-void
.end method

.method static synthetic access$1300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/nativex/monetization/custom/views/LinearProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    return-object v0
.end method

.method private createCloseButton(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 656
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/nativex/monetization/ui/ScreenDependendSize;
    invoke-static {}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1800()Lcom/nativex/monetization/ui/ScreenDependendSize;

    move-result-object v1

    iget v1, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/nativex/monetization/ui/ScreenDependendSize;
    invoke-static {}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1800()Lcom/nativex/monetization/ui/ScreenDependendSize;

    move-result-object v2

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 657
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 658
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 659
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    .line 660
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    sget-object v2, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CLOSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v1, v2}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 662
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 663
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->addView(Landroid/view/View;)V

    .line 664
    return-void
.end method

.method private createCustomProgressBar(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42c80000

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 668
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 669
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 671
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 672
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Lcom/nativex/monetization/custom/views/LinearProgressBar;

    invoke-direct {v3, p1}, Lcom/nativex/monetization/custom/views/LinearProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    .line 673
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->setMax(I)V

    .line 675
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    const/16 v4, 0x3ec

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->setId(I)V

    .line 677
    const/high16 v3, 0x420c0000

    invoke-static {p1, v3}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v2

    .line 678
    .local v2, "playSize":I
    const/high16 v3, 0x40a00000

    invoke-static {p1, v3}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v1

    .line 679
    .local v1, "playMargins":I
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    .line 680
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 681
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1, v8, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 682
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 684
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAY_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3, v4}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 686
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    .line 687
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 688
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 690
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_ELAPSED_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 693
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    .line 694
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 695
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_PROGRESS_DURATION_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 697
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    const/16 v4, 0x3ee

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 698
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 700
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 701
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 702
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 703
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 704
    return-void
.end method

.method private createProgressLayout(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    .line 645
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    .line 646
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 647
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 648
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 649
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 651
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->addView(Landroid/view/View;)V

    .line 652
    return-void
.end method

.method private setupLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0xa

    .line 638
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 639
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    return-void
.end method


# virtual methods
.method public clearAnimations()V
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->clearAnimation()V

    .line 633
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 634
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 635
    return-void
.end method

.method public hidePlayPauseButton()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 722
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    sget-object v1, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAY_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v0, v1}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 717
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    sget-object v1, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PAUSE_BUTTON_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v0, v1}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 713
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 730
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->release()V

    .line 735
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->removeAllViews()V

    .line 736
    return-void
.end method

.method public setOnPlayPauseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    return-void
.end method

.method public showPlayPauseButton()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->playPause:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 727
    return-void
.end method
