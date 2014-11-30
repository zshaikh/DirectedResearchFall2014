.class public Lcom/facebook/orca/users/UserKey;
.super Ljava/lang/Object;
.source "UserKey.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/users/User$Type;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    .line 20
    iput-object p2, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserKey;->c:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;
    .locals 4

    .prologue
    .line 25
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse user key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/facebook/orca/users/User$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/facebook/orca/users/UserKey;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 55
    :goto_0
    return v0

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 50
    :cond_2
    check-cast p1, Lcom/facebook/orca/users/UserKey;

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    iget-object v1, p1, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    .line 55
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/orca/users/UserKey;->a:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User$Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/users/UserKey;->c:Ljava/lang/String;

    return-object v0
.end method
