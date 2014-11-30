.class public Lcom/facebook/dolphin/LoginButton;
.super Landroid/widget/ImageButton;
.source "LoginButton.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityCode:I

.field private mFb:Lcom/facebook/dolphin/Facebook;

.field private mHandler:Landroid/os/Handler;

.field private mPermissions:[Ljava/lang/String;

.field private mSessionListener:Lcom/facebook/dolphin/LoginButton$SessionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/facebook/dolphin/LoginButton$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/dolphin/LoginButton$SessionListener;-><init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V

    iput-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mSessionListener:Lcom/facebook/dolphin/LoginButton$SessionListener;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/facebook/dolphin/LoginButton$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/dolphin/LoginButton$SessionListener;-><init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V

    iput-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mSessionListener:Lcom/facebook/dolphin/LoginButton$SessionListener;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Lcom/facebook/dolphin/LoginButton$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/dolphin/LoginButton$SessionListener;-><init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V

    iput-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mSessionListener:Lcom/facebook/dolphin/LoginButton$SessionListener;

    .line 52
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/dolphin/LoginButton;)Lcom/facebook/dolphin/Facebook;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mFb:Lcom/facebook/dolphin/Facebook;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/dolphin/LoginButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/dolphin/LoginButton;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/dolphin/LoginButton;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/facebook/dolphin/LoginButton;->mActivityCode:I

    return v0
.end method

.method static synthetic access$800(Lcom/facebook/dolphin/LoginButton;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;ILcom/facebook/dolphin/Facebook;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/dolphin/LoginButton;->init(Landroid/app/Activity;ILcom/facebook/dolphin/Facebook;[Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public init(Landroid/app/Activity;ILcom/facebook/dolphin/Facebook;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/dolphin/LoginButton;->mActivity:Landroid/app/Activity;

    .line 61
    iput p2, p0, Lcom/facebook/dolphin/LoginButton;->mActivityCode:I

    .line 62
    iput-object p3, p0, Lcom/facebook/dolphin/LoginButton;->mFb:Lcom/facebook/dolphin/Facebook;

    .line 63
    iput-object p4, p0, Lcom/facebook/dolphin/LoginButton;->mPermissions:[Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mHandler:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/dolphin/LoginButton;->setBackgroundColor(I)V

    .line 67
    invoke-virtual {p3}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201d9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/dolphin/LoginButton;->setImageResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/dolphin/LoginButton;->drawableStateChanged()V

    .line 70
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mSessionListener:Lcom/facebook/dolphin/LoginButton$SessionListener;

    invoke-static {v0}, Lcom/facebook/dolphin/SessionEvents;->addAuthListener(Lcom/facebook/dolphin/SessionEvents$AuthListener;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/dolphin/LoginButton;->mSessionListener:Lcom/facebook/dolphin/LoginButton$SessionListener;

    invoke-static {v0}, Lcom/facebook/dolphin/SessionEvents;->addLogoutListener(Lcom/facebook/dolphin/SessionEvents$LogoutListener;)V

    .line 72
    new-instance v0, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/dolphin/LoginButton$ButtonOnClickListener;-><init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V

    invoke-virtual {p0, v0}, Lcom/facebook/dolphin/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201d6

    goto :goto_0
.end method
