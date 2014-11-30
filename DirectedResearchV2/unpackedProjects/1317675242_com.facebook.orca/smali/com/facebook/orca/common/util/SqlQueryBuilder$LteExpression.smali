.class public Lcom/facebook/orca/common/util/SqlQueryBuilder$LteExpression;
.super Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;
.source "SqlQueryBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    const-string v0, "<="

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$BinaryExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method
