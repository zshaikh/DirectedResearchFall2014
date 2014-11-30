.class public Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;
.super Landroid/widget/LinearLayout;
.source "MessageViewImageAttachementsView.java"


# instance fields
.field private a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private b:Lcom/facebook/orca/threads/Message;

.field private c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    :goto_0
    iget v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->d:I

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/images/UrlImage;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setShowProgressBar(Z)V

    .line 73
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setBackgroundResource(I)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setClickable(Z)V

    .line 76
    iget v1, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->addView(Landroid/view/View;I)V

    .line 77
    iget v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->d:I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 81
    :goto_1
    iget v1, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->d:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 82
    invoke-direct {p0, v0}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->a(I)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :goto_2
    iget v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->d:I

    if-ge v1, v0, :cond_1

    .line 86
    invoke-virtual {p0, v1}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 87
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 94
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 95
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->e:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 97
    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 100
    new-instance v2, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView$1;-><init>(Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;Lcom/facebook/orca/attachments/ImageAttachmentData;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 52
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 53
    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 55
    const/16 v0, 0x96

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->e:I

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->setOrientation(I)V

    .line 57
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/ImageAttachmentData;)V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v2, "imageData"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;Lcom/facebook/orca/attachments/ImageAttachmentData;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->a(Lcom/facebook/orca/attachments/ImageAttachmentData;)V

    return-void
.end method


# virtual methods
.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->b:Lcom/facebook/orca/threads/Message;

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->c:Lcom/google/common/collect/ImmutableList;

    .line 66
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->a()V

    .line 67
    return-void
.end method
