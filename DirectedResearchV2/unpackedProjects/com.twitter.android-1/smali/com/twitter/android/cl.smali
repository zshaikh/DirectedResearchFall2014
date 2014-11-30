.class final Lcom/twitter/android/cl;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Lcom/twitter/android/fa;


# direct methods
.method private constructor <init>(Lcom/twitter/android/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cl;->a:Lcom/twitter/android/fa;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/fa;Lcom/twitter/android/fj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/cl;-><init>(Lcom/twitter/android/fa;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/cl;->a:Lcom/twitter/android/fa;

    invoke-virtual {v0}, Lcom/twitter/android/fa;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/cl;->a:Lcom/twitter/android/fa;

    invoke-virtual {v0}, Lcom/twitter/android/fa;->notifyDataSetInvalidated()V

    return-void
.end method
