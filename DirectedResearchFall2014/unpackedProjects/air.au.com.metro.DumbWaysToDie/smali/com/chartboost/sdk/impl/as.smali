.class public Lcom/chartboost/sdk/impl/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/as;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:I

.field final c:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "DEBUG.DBTIMESTAMP"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/chartboost/sdk/impl/as;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/as;->b:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Ljava/util/Date;

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/as;)I
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/as;->b()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/chartboost/sdk/impl/as;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/chartboost/sdk/impl/as;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/as;->a(Lcom/chartboost/sdk/impl/as;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 90
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 86
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/chartboost/sdk/impl/as;

    if-eqz v0, :cond_2

    .line 87
    check-cast p1, Lcom/chartboost/sdk/impl/as;

    .line 88
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/as;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v2

    .line 90
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/chartboost/sdk/impl/as;->b:I

    add-int/lit8 v0, v0, 0x1f

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TS time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
