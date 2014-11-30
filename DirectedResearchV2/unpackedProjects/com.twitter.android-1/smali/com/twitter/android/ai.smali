.class final Lcom/twitter/android/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/twitter/android/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DiscoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ai;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ai;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DiscoverFragment;->e_()V

    return-void
.end method
