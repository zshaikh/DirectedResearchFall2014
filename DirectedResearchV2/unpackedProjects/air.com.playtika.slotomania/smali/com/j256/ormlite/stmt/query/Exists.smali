.class public Lcom/j256/ormlite/stmt/query/Exists;
.super Ljava/lang/Object;
.source "Exists.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;


# instance fields
.field private final subQueryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;)V
    .locals 0
    .param p1, "subQueryBuilder"    # Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Exists;->subQueryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    .line 22
    return-void
.end method


# virtual methods
.method public appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const-string v0, "EXISTS ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Exists;->subQueryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    invoke-virtual {v0, p2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;->appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 28
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    return-void
.end method
