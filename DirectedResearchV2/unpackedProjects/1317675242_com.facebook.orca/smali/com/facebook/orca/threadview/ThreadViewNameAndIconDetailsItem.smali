.class public Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;
.super Lcom/facebook/orca/activity/CustomView;
.source "ThreadViewNameAndIconDetailsItem.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/orca/images/UrlImage;

.field private e:Lcom/facebook/orca/threads/ThreadSummary;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 55
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a:Lcom/facebook/orca/cache/DataCache;

    .line 56
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 58
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->a(I)V

    .line 59
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->setBackgroundResource(I)V

    .line 61
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->c:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setFocusable(Z)V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setClickable(Z)V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setBackgroundResource(I)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v1, "threadId"

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->e:Lcom/facebook/orca/threads/ThreadSummary;

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, p2, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Lcom/facebook/orca/threads/ThreadSummary;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderResourceId(I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, p2, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderResourceId(I)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNameAndIconDetailsItem;->d:Lcom/facebook/orca/images/UrlImage;

    sget-object v1, Lcom/facebook/orca/images/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    goto :goto_0
.end method
