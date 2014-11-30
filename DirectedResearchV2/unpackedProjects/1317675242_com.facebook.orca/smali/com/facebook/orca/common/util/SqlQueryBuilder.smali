.class public Lcom/facebook/orca/common/util/SqlQueryBuilder;
.super Ljava/lang/Object;
.source "SqlQueryBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    invoke-direct {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$EqualityExpression;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$EqualityExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$LteExpression;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$LteExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/orca/common/util/SqlQueryBuilder$GteExpression;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$GteExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
