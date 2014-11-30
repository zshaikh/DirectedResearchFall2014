.class Lcom/facebook/orca/compose/ComposeView$1;
.super Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;
.source "ComposeView.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$1;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$1;->a:Lcom/facebook/orca/compose/ComposeView;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView$1;->a:Lcom/facebook/orca/compose/ComposeView;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeView$1;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v2}, Lcom/facebook/orca/compose/ComposeView;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 188
    return-void
.end method

.method public a(Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$1;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;)Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView$1;->a:Lcom/facebook/orca/compose/ComposeView;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;Lcom/facebook/orca/attachments/MediaAttachment;Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$1;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->b(Lcom/facebook/orca/compose/ComposeView;)V

    .line 197
    return-void
.end method
