.class public Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;
.super Landroid/widget/LinearLayout;
.source "MessageViewOtherAttachmentsView.java"


# instance fields
.field private a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private b:Lcom/facebook/orca/threads/Message;

.field private c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 57
    :goto_0
    iget v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->d:I

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;

    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;-><init>(Landroid/content/Context;)V

    .line 59
    iget v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->addView(Landroid/view/View;I)V

    .line 60
    iget v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->d:I

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_1
    iget v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->d:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 65
    invoke-direct {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->a(I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :goto_2
    iget v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->d:I

    if-ge v1, v0, :cond_1

    .line 69
    invoke-virtual {p0, v1}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 70
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/attachments/OtherAttachmentData;

    .line 78
    invoke-virtual {v0, p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->setAttachmentInfo(Lcom/facebook/orca/attachments/OtherAttachmentData;)V

    .line 79
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 42
    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setOrientation(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->b:Lcom/facebook/orca/threads/Message;

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    .line 53
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->a()V

    .line 54
    return-void
.end method
