.class final Lj;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ly;

.field protected final b:Lj;


# direct methods
.method constructor <init>(Ly;Lj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj;->a:Ly;

    iput-object p2, p0, Lj;->b:Lj;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lj;->b:Lj;

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lj;->b:Lj;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final a(III)Ly;
    .locals 3

    iget-object v0, p0, Lj;->a:Ly;

    invoke-virtual {v0}, Ly;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lj;->a:Ly;

    invoke-virtual {v0, p2, p3}, Ly;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj;->a:Ly;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lj;->b:Lj;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, v1, Lj;->a:Ly;

    invoke-virtual {v0}, Ly;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0, p2, p3}, Ly;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v0, v1, Lj;->b:Lj;

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I[II)Ly;
    .locals 3

    iget-object v0, p0, Lj;->a:Ly;

    invoke-virtual {v0}, Ly;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lj;->a:Ly;

    invoke-virtual {v0, p2, p3}, Ly;->a([II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj;->a:Ly;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lj;->b:Lj;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, v1, Lj;->a:Ly;

    invoke-virtual {v0}, Ly;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0, p2, p3}, Ly;->a([II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v0, v1, Lj;->b:Lj;

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
