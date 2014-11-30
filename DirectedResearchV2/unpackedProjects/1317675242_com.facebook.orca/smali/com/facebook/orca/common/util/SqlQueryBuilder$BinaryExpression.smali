.class public Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;
.super Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
.source "SqlQueryBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->a:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->b:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->c:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
