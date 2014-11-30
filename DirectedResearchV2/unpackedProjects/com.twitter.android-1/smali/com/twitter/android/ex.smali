.class public final Lcom/twitter/android/ex;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/StoriesFragment;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/StoriesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ex;->a:Lcom/twitter/android/StoriesFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ex;->a:Lcom/twitter/android/StoriesFragment;

    iget-object v0, v0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ex;->a:Lcom/twitter/android/StoriesFragment;

    iget-object v0, v0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dh;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
