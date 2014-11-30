.class public Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;
.super Lcom/facebook/orca/activity/CustomView;
.source "MessageViewOtherAttachmentView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/util/FileSizeUtil;

.field private b:Lcom/facebook/orca/attachments/OtherAttachmentData;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->d()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/util/FileSizeUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/FileSizeUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->a:Lcom/facebook/orca/common/util/FileSizeUtil;

    .line 52
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->a(I)V

    .line 53
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c:Landroid/widget/Button;

    .line 54
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->d:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->e:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView$1;-><init>(Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/OtherAttachmentData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->a:Lcom/facebook/orca/common/util/FileSizeUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/OtherAttachmentData;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/util/FileSizeUtil;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;->c()Landroid/net/Uri;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/OtherAttachmentData;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 91
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public setAttachmentInfo(Lcom/facebook/orca/attachments/OtherAttachmentData;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->b:Lcom/facebook/orca/attachments/OtherAttachmentData;

    .line 70
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentView;->c()V

    .line 71
    return-void
.end method
