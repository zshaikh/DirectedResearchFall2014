.class public Lcom/facebook/orca/threadview/AdminMessageItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "AdminMessageItemView.java"


# instance fields
.field private a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private b:Lcom/facebook/orca/threads/Message;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/AdminMessageItemView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/AdminMessageItemView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/AdminMessageItemView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AdminMessageItemView;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 46
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;->a(I)V

    .line 48
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->d:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AdminMessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->e:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    .line 51
    return-void
.end method


# virtual methods
.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->b:Lcom/facebook/orca/threads/Message;

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->b:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v0

    .line 60
    packed-switch v0, :pswitch_data_0

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->e:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->e:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 98
    :goto_1
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 74
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 82
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->c:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/AdminMessageItemView;->e:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
