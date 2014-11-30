.class public Lcom/facebook/orca/compose/ComposeView;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ComposeView.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private Q:Lcom/facebook/orca/images/ImageScalingUtil;

.field private R:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private S:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

.field private T:Landroid/support/v4/app/FragmentManager;

.field private U:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private V:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

.field private W:Lcom/facebook/orca/push/PresenceManager;

.field private X:Lcom/facebook/orca/prefs/UiCounters;

.field private Y:Landroid/location/LocationManager;

.field private Z:Landroid/view/LayoutInflater;

.field private aa:Lcom/facebook/orca/push/common/PushDeserialization;

.field private ab:Landroid/view/View;

.field private ac:Landroid/view/View;

.field private ad:Landroid/view/View;

.field private ae:Landroid/widget/EditText;

.field private af:Landroid/widget/ImageButton;

.field private ag:Landroid/widget/ImageButton;

.field private ah:Landroid/widget/Button;

.field private ai:Landroid/widget/TextView;

.field private aj:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private ak:Ljava/lang/String;

.field private al:Lcom/facebook/orca/photos/picking/PickMediaOperation;

.field private am:Lcom/facebook/orca/attachments/MediaAttachment;

.field private an:Lcom/facebook/orca/compose/ComposeView$LocationState;

.field private ao:Lcom/facebook/orca/location/LocationResult;

.field private ap:Ljava/lang/Boolean;

.field private aq:Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;

.field private ar:Lcom/facebook/orca/compose/ComposeMode;

.field private as:Ljava/lang/String;

.field private at:Z

.field private au:I

.field private av:I

.field private aw:J

.field private ax:J

.field private ay:Z

.field private az:Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;

.field private d:Lcom/facebook/orca/cache/DataCache;

.field private e:Lcom/facebook/orca/config/OrcaConfig;

.field private f:Landroid/view/inputmethod/InputMethodManager;

.field private g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const/16 v0, 0x1f4

    sput v0, Lcom/facebook/orca/compose/ComposeView;->a:I

    .line 85
    sget v0, Lcom/facebook/orca/compose/ComposeView;->a:I

    const/16 v1, 0x32

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/orca/compose/ComposeView;->b:I

    .line 86
    sget v0, Lcom/facebook/orca/compose/ComposeView;->a:I

    const/16 v1, 0x14

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/orca/compose/ComposeView;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 131
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 515
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;-><init>(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Ljava/lang/String;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 517
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    if-eqz v1, :cond_0

    .line 518
    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->REMOVE:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->al:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V

    .line 522
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    .line 526
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ag:Landroid/widget/ImageButton;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 527
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->O()V

    .line 528
    return-void
.end method

.method private C()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 555
    const/4 v0, 0x0

    .line 556
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    .line 564
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->J()V

    .line 567
    :cond_1
    return-void

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->R:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private D()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 591
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->E()V

    .line 615
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->I()Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->F()V

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 602
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->R:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 604
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/orca/prefs/PrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v2

    .line 605
    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)V

    .line 606
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 608
    :cond_2
    if-eqz v0, :cond_4

    .line 609
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ap:Ljava/lang/Boolean;

    .line 610
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->J()V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 601
    goto :goto_1

    .line 612
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ap:Ljava/lang/Boolean;

    .line 613
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->K()V

    goto :goto_0
.end method

.method private E()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 622
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->Z:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 623
    const v0, 0x7f08007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 624
    const v3, 0x7f0a009b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 625
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 626
    const v3, 0x7f0a0097

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 627
    const v3, 0x7f0a0007

    new-instance v4, Lcom/facebook/orca/compose/ComposeView$12;

    invoke-direct {v4, p0}, Lcom/facebook/orca/compose/ComposeView$12;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    const v3, 0x7f0a0008

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 637
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 638
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 639
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 640
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeView;->d(Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.settings.SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeView;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeView;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private G()Z
    .locals 1

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private H()Z
    .locals 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->R:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    return v0
.end method

.method private I()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 720
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 721
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 722
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->Y:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private J()V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->d:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->g()Lcom/facebook/orca/location/LocationResult;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_1

    .line 747
    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    .line 752
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aj:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 753
    invoke-static {}, Lcom/facebook/orca/server/GetDeviceLocationParams;->newBuilder()Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a(I)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a(J)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a(Z)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->d()Lcom/facebook/orca/server/GetDeviceLocationParams;

    move-result-object v0

    .line 758
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 759
    const-string v2, "getDeviceLocationParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 760
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aj:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "get_device_location"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 762
    :cond_0
    return-void

    .line 749
    :cond_1
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    goto :goto_0
.end method

.method private K()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    iput-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ao:Lcom/facebook/orca/location/LocationResult;

    .line 766
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    .line 767
    return-void
.end method

.method private L()V
    .locals 2

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->P()V

    .line 807
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->N()V

    .line 808
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->O()V

    .line 809
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(ZZ)V

    .line 810
    return-void
.end method

.method private M()V
    .locals 4

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeView;->ay:Z

    if-eqz v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$14;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$14;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeView;->ay:Z

    goto :goto_0
.end method

.method private N()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 891
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 892
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 894
    const/16 v0, 0x50

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 898
    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private O()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ah:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->s()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 904
    return-void

    .line 903
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private P()V
    .locals 4

    .prologue
    .line 907
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 908
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 909
    sget v1, Lcom/facebook/orca/compose/ComposeView;->b:I

    if-le v0, v1, :cond_1

    .line 910
    sget v1, Lcom/facebook/orca/compose/ComposeView;->c:I

    if-le v0, v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ai:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 915
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ai:Landroid/widget/TextView;

    sget v2, Lcom/facebook/orca/compose/ComposeView;->a:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ai:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 921
    :goto_1
    return-void

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ai:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ai:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ai:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private Q()V
    .locals 5

    .prologue
    .line 924
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    sget v1, Lcom/facebook/orca/compose/ComposeView;->a:I

    if-le v0, v1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aq:Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->X:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-ne v0, v1, :cond_2

    .line 930
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ao:Lcom/facebook/orca/location/LocationResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Lcom/facebook/orca/location/LocationResult;J)V

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aq:Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeView;->e(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;)Lcom/facebook/orca/attachments/MediaAttachmentFactory;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    return-object v0
.end method

.method private a(Lcom/facebook/orca/attachments/MediaAttachment;Z)V
    .locals 3

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    .line 533
    if-nez p1, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->O()V

    .line 549
    :goto_0
    return-void

    .line 539
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    .line 540
    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/facebook/orca/attachments/MediaAttachment;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_1

    .line 543
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 544
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->O()V

    goto :goto_0

    .line 546
    :cond_1
    const-string v0, "orca:ComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to preview from attachment at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V
    .locals 2

    .prologue
    const v1, 0x7f02001c

    .line 770
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    .line 771
    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeView;->ao:Lcom/facebook/orca/location/LocationResult;

    .line 773
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-ne p1, v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-ne p1, v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 779
    :cond_2
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-ne p1, v0, :cond_3

    .line 780
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 782
    :cond_3
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-ne p1, v0, :cond_0

    .line 783
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    .line 784
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;Lcom/facebook/orca/attachments/MediaAttachment;Z)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/attachments/MediaAttachment;Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;Lcom/facebook/orca/location/LocationResult;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeView;->b(Lcom/facebook/orca/location/LocationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/compose/ComposeView;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/compose/ComposeView;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeView;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;ZZ)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/compose/ComposeView;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/facebook/orca/location/LocationResult;)V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-eq v0, v1, :cond_0

    .line 728
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    .line 730
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->S:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 803
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->z()V

    .line 872
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->as:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->as:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget v0, p0, Lcom/facebook/orca/compose/ComposeView;->av:I

    if-eq v0, p2, :cond_0

    .line 881
    iput p2, p0, Lcom/facebook/orca/compose/ComposeView;->av:I

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-eq v0, v1, :cond_0

    .line 740
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeView$LocationState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    .line 742
    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 814
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->z()V

    .line 815
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->as:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 819
    if-eqz p1, :cond_2

    .line 820
    iput-wide v0, p0, Lcom/facebook/orca/compose/ComposeView;->ax:J

    .line 823
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 825
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->m()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v2, v4

    .line 833
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeView;->W:Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v3}, Lcom/facebook/orca/push/PresenceManager;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    iget v3, p0, Lcom/facebook/orca/compose/ComposeView;->au:I

    if-ne v3, v2, :cond_6

    iget-wide v3, p0, Lcom/facebook/orca/compose/ComposeView;->aw:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v6

    if-gez v3, :cond_6

    .line 838
    iget v0, p0, Lcom/facebook/orca/compose/ComposeView;->au:I

    if-ne v0, v5, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->M()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 852
    const-string v1, "orca:ComposeView"

    const-string v2, "Exception sending typing notifications"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 827
    :cond_4
    :try_start_1
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-wide v2, p0, Lcom/facebook/orca/compose/ComposeView;->ax:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    move v2, v5

    .line 828
    goto :goto_1

    :cond_5
    move v2, v4

    .line 830
    goto :goto_1

    .line 843
    :cond_6
    iput v2, p0, Lcom/facebook/orca/compose/ComposeView;->au:I

    .line 844
    iput-wide v0, p0, Lcom/facebook/orca/compose/ComposeView;->aw:J

    .line 846
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->W:Lcom/facebook/orca/push/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->as:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/push/PresenceManager;->b(Ljava/lang/String;I)V

    .line 847
    iget v0, p0, Lcom/facebook/orca/compose/ComposeView;->au:I

    if-ne v0, v5, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->M()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeView;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/facebook/orca/compose/ComposeView;->ay:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->B()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeView;Lcom/facebook/orca/location/LocationResult;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/location/LocationResult;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/location/LocationResult;)V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-eq v0, v1, :cond_0

    .line 734
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    .line 736
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/compose/ComposeView;)Lcom/facebook/orca/compose/ComposeMode;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ar:Lcom/facebook/orca/compose/ComposeMode;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/compose/ComposeView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 664
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->Z:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 665
    const v0, 0x7f08007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 667
    if-eqz p1, :cond_0

    .line 668
    const v4, 0x7f0a0098

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 673
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    const v3, 0x7f0a0097

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 675
    if-eqz p1, :cond_1

    .line 676
    const v3, 0x7f0a0099

    new-instance v4, Lcom/facebook/orca/compose/ComposeView$13;

    invoke-direct {v4, p0, p1}, Lcom/facebook/orca/compose/ComposeView$13;-><init>(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 685
    const v3, 0x7f0a0004

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 689
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 690
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 691
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 692
    return-void

    .line 670
    :cond_0
    const v4, 0x7f0a009a

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 687
    :cond_1
    const v3, 0x7f0a0003

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->k()Landroid/content/res/Resources;

    move-result-object v0

    .line 790
    new-instance v1, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->k()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 791
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f090016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 794
    invoke-virtual {v1, p1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 795
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a()Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 796
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->v()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->D()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->y()V

    return-void
.end method

.method static synthetic h(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->A()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->Q()V

    return-void
.end method

.method static synthetic j(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->L()V

    return-void
.end method

.method static synthetic k(Lcom/facebook/orca/compose/ComposeView;)Lcom/facebook/orca/prefs/OrcaSharedPreferences;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->R:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    return-object v0
.end method

.method private v()V
    .locals 6

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->w()Landroid/view/TouchDelegate;

    move-result-object v0

    .line 318
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->x()Landroid/view/TouchDelegate;

    move-result-object v1

    .line 320
    new-instance v2, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;

    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/TouchDelegate;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;-><init>(Landroid/view/View;[Landroid/view/TouchDelegate;)V

    .line 322
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 324
    :cond_0
    return-void
.end method

.method private w()Landroid/view/TouchDelegate;
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 328
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 329
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 330
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 331
    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 332
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 333
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 334
    new-instance v0, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ag:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    return-object v0
.end method

.method private x()Landroid/view/TouchDelegate;
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 339
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 340
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ah:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 341
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 342
    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 343
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 344
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 345
    new-instance v0, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ah:Landroid/widget/Button;

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    return-object v0
.end method

.method private y()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 351
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 352
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 353
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 354
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 355
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 356
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 357
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 360
    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeView;->at:Z

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->U:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->as:Ljava/lang/String;

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeView;->at:Z

    .line 473
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 214
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$3;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$4;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const v1, 0x7f080032

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ac:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const v1, 0x7f080034

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ad:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const v1, 0x7f080036

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const v1, 0x7f080037

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const v1, 0x7f080033

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ag:Landroid/widget/ImageButton;

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const v1, 0x7f080035

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ah:Landroid/widget/Button;

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    const v1, 0x7f080038

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ai:Landroid/widget/TextView;

    .line 247
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$5;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$6;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ag:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$7;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ah:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$8;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$8;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$9;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$9;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    const-string v0, "getLocationOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeView;->c(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aj:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 291
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aj:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$10;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$10;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aj:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$11;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$11;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V

    .line 310
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->O()V

    .line 312
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ab:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->a()V

    .line 390
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->W:Lcom/facebook/orca/push/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->az:Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/PresenceManager;->b(Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;)V

    .line 391
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-string v0, "imageAttachment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaResource;

    .line 368
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 369
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/attachments/MediaAttachment;Z)V

    .line 371
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    .line 372
    const/4 v1, 0x0

    .line 373
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->G()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    const-string v0, "locationState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView$LocationState;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/compose/ComposeView$LocationState;

    move-result-object v1

    .line 375
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/LocationResult;

    .line 379
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    .line 380
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    if-eq v1, v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->J()V

    .line 385
    :cond_0
    return-void

    :cond_1
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne p1, v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ac:Landroid/view/View;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 437
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 438
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->C()V

    .line 446
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView;->ar:Lcom/facebook/orca/compose/ComposeMode;

    .line 447
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ac:Landroid/view/View;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 441
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->af:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->S:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView;->aq:Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;

    .line 455
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/Message;)V
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 489
    :try_start_0
    const-string v0, "share_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_0
    const-string v0, "share_photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 494
    if-eqz v0, :cond_1

    .line 495
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 498
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/attachments/MediaAttachment;Z)V

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->O()V
    :try_end_0
    .catch Lcom/facebook/orca/attachments/UnknownAttachmentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeView;->e(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->b(Landroid/os/Bundle;)V

    .line 399
    const-string v0, "imageAttachment"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 401
    const-string v0, "locationState"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->an:Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeView$LocationState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "location"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->ao:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ap:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->R:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 580
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v1

    .line 581
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ap:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)V

    .line 582
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 584
    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeView;->u()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 152
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->d:Lcom/facebook/orca/cache/DataCache;

    .line 153
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->e:Lcom/facebook/orca/config/OrcaConfig;

    .line 154
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->f:Landroid/view/inputmethod/InputMethodManager;

    .line 155
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->g:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 156
    const-class v0, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageScalingUtil;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->Q:Lcom/facebook/orca/images/ImageScalingUtil;

    .line 157
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->R:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 158
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->S:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 159
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->T:Landroid/support/v4/app/FragmentManager;

    .line 160
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->U:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 161
    const-class v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->V:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    .line 162
    const-class v0, Lcom/facebook/orca/push/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->W:Lcom/facebook/orca/push/PresenceManager;

    .line 163
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->X:Lcom/facebook/orca/prefs/UiCounters;

    .line 164
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->Y:Landroid/location/LocationManager;

    .line 165
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->Z:Landroid/view/LayoutInflater;

    .line 166
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aa:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->T:Landroid/support/v4/app/FragmentManager;

    const-string v1, "pickPhotoOperation"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->al:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->al:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-direct {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->al:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 172
    const-string v0, "pickPhotoOperation"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->al:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->al:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    new-instance v1, Lcom/facebook/orca/compose/ComposeView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeView$1;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V

    .line 199
    new-instance v0, Lcom/facebook/orca/compose/ComposeView$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/compose/ComposeView$2;-><init>(Lcom/facebook/orca/compose/ComposeView;)V

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->az:Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->W:Lcom/facebook/orca/push/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView;->az:Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/PresenceManager;->a(Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;)V

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->S:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 207
    return-void
.end method

.method public g()Lcom/facebook/orca/threads/Message;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 458
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->aa:Lcom/facebook/orca/push/common/PushDeserialization;

    const/16 v1, 0x3e7

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView;->ak:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeView;->V:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {v3}, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/compose/ComposeView;->ao:Lcom/facebook/orca/location/LocationResult;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/facebook/orca/compose/ComposeView;->ao:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v5}, Lcom/facebook/orca/location/LocationResult;->b()Landroid/location/Location;

    move-result-object v5

    :goto_0
    invoke-static {v5}, Lcom/facebook/orca/location/Coordinates;->a(Landroid/location/Location;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-virtual {v6}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v6

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/push/common/PushDeserialization;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 465
    return-object v0

    :cond_0
    move-object v5, v7

    .line 458
    goto :goto_0

    :cond_1
    move-object v6, v7

    goto :goto_1
.end method

.method public i_()V
    .locals 2

    .prologue
    .line 407
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->i_()V

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->S:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 409
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(ZZ)V

    .line 410
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->am:Lcom/facebook/orca/attachments/MediaAttachment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView;->ae:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->B()V

    .line 482
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->O()V

    .line 483
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$LocationState;Lcom/facebook/orca/location/LocationResult;)V

    .line 484
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeView;->C()V

    .line 485
    return-void
.end method
