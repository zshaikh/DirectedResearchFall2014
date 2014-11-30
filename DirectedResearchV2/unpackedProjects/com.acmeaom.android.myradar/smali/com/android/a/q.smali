.class Lcom/android/a/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/android/a/p;


# direct methods
.method constructor <init>(Lcom/android/a/p;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/a/q;->c:Lcom/android/a/p;

    iput-object p2, p0, Lcom/android/a/q;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/a/q;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/a/q;->c:Lcom/android/a/p;

    invoke-static {v0}, Lcom/android/a/p;->b(Lcom/android/a/p;)Lcom/android/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/android/a/q;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/a/q;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/a/ac;->a(Ljava/lang/String;J)V

    .line 229
    iget-object v0, p0, Lcom/android/a/q;->c:Lcom/android/a/p;

    invoke-static {v0}, Lcom/android/a/p;->b(Lcom/android/a/p;)Lcom/android/a/ac;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/a/ac;->a(Ljava/lang/String;)V

    .line 230
    return-void
.end method
