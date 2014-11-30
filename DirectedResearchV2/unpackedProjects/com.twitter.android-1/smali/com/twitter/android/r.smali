.class final Lcom/twitter/android/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/twitter/android/client/e;

.field private synthetic b:Lcom/twitter/android/api/c;

.field private synthetic c:Lcom/twitter/android/bn;


# direct methods
.method constructor <init>(Lcom/twitter/android/bn;Lcom/twitter/android/client/e;Lcom/twitter/android/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/r;->c:Lcom/twitter/android/bn;

    iput-object p2, p0, Lcom/twitter/android/r;->a:Lcom/twitter/android/client/e;

    iput-object p3, p0, Lcom/twitter/android/r;->b:Lcom/twitter/android/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/r;->c:Lcom/twitter/android/bn;

    iget-object v0, v0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v1, p0, Lcom/twitter/android/r;->a:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/r;->b:Lcom/twitter/android/api/c;

    iget-object v2, v2, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/r;->b:Lcom/twitter/android/api/c;

    iget-wide v3, v3, Lcom/twitter/android/api/c;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;)V

    return-void
.end method
