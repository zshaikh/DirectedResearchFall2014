.class final Lcom/twitter/android/gt;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Lcom/twitter/android/ce;


# direct methods
.method constructor <init>(Lcom/twitter/android/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/ce;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/ce;

    iget-boolean v0, v0, Lcom/twitter/android/ce;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/ce;

    invoke-virtual {v0}, Lcom/twitter/android/ce;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/ce;

    invoke-virtual {v0}, Lcom/twitter/android/ce;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/gt;->a:Lcom/twitter/android/ce;

    invoke-virtual {v0}, Lcom/twitter/android/ce;->notifyDataSetInvalidated()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/gt;->onChanged()V

    goto :goto_0
.end method
