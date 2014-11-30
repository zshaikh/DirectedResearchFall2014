.class Ldolphin/webkit/iv;
.super Landroid/database/DataSetObserver;
.source "WebViewClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/in;

.field private b:J

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>(Ldolphin/webkit/in;JLandroid/widget/ListView;Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 9618
    iput-object p1, p0, Ldolphin/webkit/iv;->a:Ldolphin/webkit/in;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 9619
    iput-wide p2, p0, Ldolphin/webkit/iv;->b:J

    .line 9620
    iput-object p4, p0, Ldolphin/webkit/iv;->c:Landroid/widget/ListView;

    .line 9621
    iput-object p5, p0, Ldolphin/webkit/iv;->d:Landroid/widget/Adapter;

    .line 9622
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .prologue
    .line 9628
    iget-object v0, p0, Ldolphin/webkit/iv;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 9629
    iget-object v1, p0, Ldolphin/webkit/iv;->d:Landroid/widget/Adapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    .line 9630
    iget-wide v2, p0, Ldolphin/webkit/iv;->b:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 9633
    iget-object v0, p0, Ldolphin/webkit/iv;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 9636
    iget-object v0, p0, Ldolphin/webkit/iv;->d:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 9637
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 9638
    iget-object v2, p0, Ldolphin/webkit/iv;->d:Landroid/widget/Adapter;

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iget-wide v4, p0, Ldolphin/webkit/iv;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 9639
    iget-object v1, p0, Ldolphin/webkit/iv;->c:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9644
    :cond_0
    return-void

    .line 9637
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
