.class final Lcom/vungle/sdk/VungleAdvert$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/VungleAdvert;->a(I)Lcom/vungle/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/VungleAdvert;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "watch"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;)V

    .line 199
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->b(Lcom/vungle/sdk/VungleAdvert;)V

    .line 200
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->c(Lcom/vungle/sdk/VungleAdvert;)I

    .line 226
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0, p1}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->b(Lcom/vungle/sdk/VungleAdvert;)V

    .line 230
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->c(Lcom/vungle/sdk/VungleAdvert;)I

    .line 207
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->b(Lcom/vungle/sdk/VungleAdvert;)V

    .line 208
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->c(Lcom/vungle/sdk/VungleAdvert;)I

    .line 215
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/sdk/VungleAdvert;->a(Lcom/vungle/sdk/VungleAdvert;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$2;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->b(Lcom/vungle/sdk/VungleAdvert;)V

    .line 219
    return-void
.end method
