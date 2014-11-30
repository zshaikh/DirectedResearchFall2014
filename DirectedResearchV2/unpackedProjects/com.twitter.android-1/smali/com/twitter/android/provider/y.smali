.class final Lcom/twitter/android/provider/y;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Lcom/twitter/android/provider/as;


# direct methods
.method private constructor <init>(Lcom/twitter/android/provider/as;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/provider/y;->a:Lcom/twitter/android/provider/as;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/provider/as;Lcom/twitter/android/provider/ba;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/provider/y;-><init>(Lcom/twitter/android/provider/as;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/provider/y;->a:Lcom/twitter/android/provider/as;

    invoke-virtual {v0}, Lcom/twitter/android/provider/as;->notifyChanged()V

    return-void
.end method
