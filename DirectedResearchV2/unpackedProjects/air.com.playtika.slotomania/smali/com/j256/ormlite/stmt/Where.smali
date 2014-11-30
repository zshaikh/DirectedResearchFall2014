.class public Lcom/j256/ormlite/stmt/Where;
.super Ljava/lang/Object;
.source "Where.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final START_CLAUSE_SIZE:I = 0x4


# instance fields
.field private clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

.field private clauseStackLevel:I

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private final idColumnName:Ljava/lang/String;

.field private final idFieldType:Lcom/j256/ormlite/field/FieldType;

.field private needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

.field private final statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/stmt/StatementBuilder;Lcom/j256/ormlite/db/DatabaseType;)V
    .locals 2
    .param p3, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/db/DatabaseType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statementBuilder":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/j256/ormlite/stmt/query/Clause;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    .line 132
    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    .line 136
    iput-object p1, p0, Lcom/j256/ormlite/stmt/Where;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 137
    iput-object p2, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 138
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->idFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 139
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->idFieldType:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 140
    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->idColumnName:Ljava/lang/String;

    .line 144
    :goto_0
    iput-object p3, p0, Lcom/j256/ormlite/stmt/Where;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 145
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->idFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->idColumnName:Ljava/lang/String;

    goto :goto_0
.end method

.method private addClause(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 1
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    .prologue
    .line 596
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->push(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/query/NeedsFutureClause;->setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    goto :goto_0
.end method

.method private addNeedsFuture(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V
    .locals 3
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    .prologue
    .line 587
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already waiting for a future clause, can\'t add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/Where;->needsFuture:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    .line 592
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->push(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 593
    return-void
.end method

.method private buildClauseArray([Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;)[Lcom/j256/ormlite/stmt/query/Clause;
    .locals 4
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/j256/ormlite/stmt/query/Clause;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "others":[Lcom/j256/ormlite/stmt/Where;, "[Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    array-length v2, p1

    if-nez v2, :cond_1

    .line 575
    const/4 v0, 0x0

    .line 583
    .local v0, "clauses":[Lcom/j256/ormlite/stmt/query/Clause;
    :cond_0
    return-object v0

    .line 577
    .end local v0    # "clauses":[Lcom/j256/ormlite/stmt/query/Clause;
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Lcom/j256/ormlite/stmt/query/Clause;

    .line 579
    .restart local v0    # "clauses":[Lcom/j256/ormlite/stmt/query/Clause;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 580
    invoke-direct {p0, p2}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    aput-object v2, v0, v1

    .line 579
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 606
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    return-object v0
.end method

.method private in(ZLjava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "in"    # Z
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p3, "subQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->getSelectColumnCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 562
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inner query must have only 1 select column specified instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->getSelectColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    invoke-virtual {p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->enableInnerQuery()V

    .line 567
    new-instance v0, Lcom/j256/ormlite/stmt/query/InSubQuery;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    new-instance v2, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    invoke-direct {v2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/j256/ormlite/stmt/query/InSubQuery;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 569
    return-object p0
.end method

.method private varargs in(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "in"    # Z
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const/4 v2, 0x0

    .line 547
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 548
    aget-object v0, p3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object argument to IN seems to be an array within an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    aget-object v0, p3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/j256/ormlite/stmt/Where;

    if-ne v0, v1, :cond_1

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object argument to IN seems to be a Where.class instead of a QueryBuilder.class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_1
    new-instance v0, Lcom/j256/ormlite/stmt/query/In;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p1}, Lcom/j256/ormlite/stmt/query/In;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;[Ljava/lang/Object;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 557
    return-object p0
.end method

.method private peek()Lcom/j256/ormlite/stmt/query/Clause;
    .locals 3

    .prologue
    .line 637
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 626
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    if-nez v1, :cond_0

    .line 627
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting there to be a clause already defined for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    aget-object v0, v1, v2

    .line 632
    .local v0, "clause":Lcom/j256/ormlite/stmt/query/Clause;
    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 633
    return-object v0
.end method

.method private push(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 5
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    .prologue
    .line 611
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    iget-object v3, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 613
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Lcom/j256/ormlite/stmt/query/Clause;

    .line 615
    .local v1, "newStack":[Lcom/j256/ormlite/stmt/query/Clause;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    if-ge v0, v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 618
    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_0
    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 622
    .end local v0    # "i":I
    .end local v1    # "newStack":[Lcom/j256/ormlite/stmt/query/Clause;
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v3, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    aput-object p1, v2, v3

    .line 623
    return-void
.end method


# virtual methods
.method public and()Lcom/j256/ormlite/stmt/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const-string v3, "AND"

    .line 151
    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string v1, "AND"

    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    const-string v2, "AND"

    invoke-direct {v0, v1, v3}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addNeedsFuture(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    .line 152
    return-object p0
.end method

.method public and(I)Lcom/j256/ormlite/stmt/Where;
    .locals 5
    .param p1, "numClauses"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const-string v4, "AND"

    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must have at least one clause in and(numClauses)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_0
    new-array v0, p1, [Lcom/j256/ormlite/stmt/query/Clause;

    .line 188
    .local v0, "clauses":[Lcom/j256/ormlite/stmt/query/Clause;
    const/4 v2, 0x1

    sub-int v1, p1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 189
    const-string v2, "AND"

    invoke-direct {p0, v4}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    aput-object v2, v0, v1

    .line 188
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v2, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string v3, "AND"

    invoke-direct {v2, v0, v4}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>([Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 192
    return-object p0
.end method

.method public varargs and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;[",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "first":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p2, "second":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p3, "others":[Lcom/j256/ormlite/stmt/Where;, "[Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const-string v5, "AND"

    .line 167
    const-string v3, "AND"

    invoke-direct {p0, p3, v5}, Lcom/j256/ormlite/stmt/Where;->buildClauseArray([Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;)[Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    .line 168
    .local v0, "clauses":[Lcom/j256/ormlite/stmt/query/Clause;
    const-string v3, "AND"

    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    .line 169
    .local v2, "secondClause":Lcom/j256/ormlite/stmt/query/Clause;
    const-string v3, "AND"

    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    .line 170
    .local v1, "firstClause":Lcom/j256/ormlite/stmt/query/Clause;
    new-instance v3, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string v4, "AND"

    invoke-direct {v3, v1, v2, v0, v5}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/Clause;[Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 171
    return-object p0
.end method

.method appendSql(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 524
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p2, "columnArgList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No where clauses defined.  Did you miss a where operation?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    iget v0, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both the \"left-hand\" and \"right-hand\" clauses have been defined.  Did you miss an AND or OR?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/Where;->peek()Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, v1, p1, p2}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 534
    return-void
.end method

.method public between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "low"    # Ljava/lang/Object;
    .param p3, "high"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/Between;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/j256/ormlite/stmt/query/Between;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 200
    return-object p0
.end method

.method public clear()Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    if-ge v0, v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStack:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    .line 508
    return-object p0
.end method

.method public eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string v2, "="

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 209
    return-object p0
.end method

.method public exists(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "subQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->enableInnerQuery()V

    .line 291
    new-instance v0, Lcom/j256/ormlite/stmt/query/Exists;

    new-instance v1, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder;)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/stmt/query/Exists;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 292
    return-object p0
.end method

.method public ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string v2, ">="

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 218
    return-object p0
.end method

.method public getStatement()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/j256/ormlite/stmt/Where;->appendSql(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string v2, ">"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 227
    return-object p0
.end method

.method public idEq(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OD:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TOD;*>;TOD;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "dataDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TOD;*>;"
    .local p2, "data":Ljava/lang/Object;, "TOD;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->idColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Object has no id column specified"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->idColumnName:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->idFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 431
    return-object p0
.end method

.method public idEq(Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->idColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Object has no id column specified"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->idColumnName:Ljava/lang/String;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->idFieldType:Lcom/j256/ormlite/field/FieldType;

    const-string v3, "="

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 419
    return-object p0
.end method

.method public in(Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p2, "subQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->in(ZLjava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p2, "objects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/In;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/In;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Iterable;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 235
    return-object p0
.end method

.method public varargs in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->in(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/IsNotNull;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/j256/ormlite/stmt/query/IsNotNull;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 308
    return-object p0
.end method

.method public isNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/IsNull;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/j256/ormlite/stmt/query/IsNull;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 300
    return-object p0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    instance-of v0, v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    if-eqz v0, :cond_0

    .line 493
    iget-object p0, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    .end local p0    # "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    check-cast p0, Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0

    .line 495
    .restart local p0    # "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call iterator on a statement of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string v2, "<="

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 317
    return-object p0
.end method

.method public like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string v2, "LIKE"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 335
    return-object p0
.end method

.method public lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string v2, "<"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 326
    return-object p0
.end method

.method public ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const-string v2, "<>"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 344
    return-object p0
.end method

.method public not()Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/Not;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/query/Not;-><init>()V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addNeedsFuture(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    .line 352
    return-object p0
.end method

.method public not(Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "comparison":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/Not;

    const-string v1, "NOT"

    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/j256/ormlite/stmt/query/Not;-><init>(Lcom/j256/ormlite/stmt/query/Clause;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 360
    return-object p0
.end method

.method public notIn(Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p2, "subQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->in(ZLjava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public notIn(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p2, "objects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/In;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/In;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Iterable;Z)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 243
    return-object p0
.end method

.method public varargs notIn(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->in(ZLjava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    return-object v0
.end method

.method public or()Lcom/j256/ormlite/stmt/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const-string v3, "OR"

    .line 367
    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string v1, "OR"

    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    const-string v2, "OR"

    invoke-direct {v0, v1, v3}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addNeedsFuture(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    .line 368
    return-object p0
.end method

.method public or(I)Lcom/j256/ormlite/stmt/Where;
    .locals 5
    .param p1, "numClauses"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const-string v4, "OR"

    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must have at least one clause in or(numClauses)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_0
    new-array v0, p1, [Lcom/j256/ormlite/stmt/query/Clause;

    .line 404
    .local v0, "clauses":[Lcom/j256/ormlite/stmt/query/Clause;
    const/4 v2, 0x1

    sub-int v1, p1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 405
    const-string v2, "OR"

    invoke-direct {p0, v4}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    aput-object v2, v0, v1

    .line 404
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 407
    :cond_1
    new-instance v2, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string v3, "OR"

    invoke-direct {v2, v0, v4}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>([Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 408
    return-object p0
.end method

.method public varargs or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;[",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "left":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p2, "right":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p3, "others":[Lcom/j256/ormlite/stmt/Where;, "[Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const-string v5, "OR"

    .line 383
    const-string v3, "OR"

    invoke-direct {p0, p3, v5}, Lcom/j256/ormlite/stmt/Where;->buildClauseArray([Lcom/j256/ormlite/stmt/Where;Ljava/lang/String;)[Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    .line 384
    .local v0, "clauses":[Lcom/j256/ormlite/stmt/query/Clause;
    const-string v3, "OR"

    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v2

    .line 385
    .local v2, "secondClause":Lcom/j256/ormlite/stmt/query/Clause;
    const-string v3, "OR"

    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/Where;->pop(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    .line 386
    .local v1, "firstClause":Lcom/j256/ormlite/stmt/query/Clause;
    new-instance v3, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string v4, "OR"

    invoke-direct {v3, v1, v2, v0, v5}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/Clause;[Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 387
    return-object p0
.end method

.method public prepare()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/StatementBuilder;->prepareStatement(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v0

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    instance-of v0, v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    if-eqz v0, :cond_0

    .line 482
    iget-object p0, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    .end local p0    # "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    check-cast p0, Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 484
    .restart local p0    # "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call query on a statement of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->statementBuilder:Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs raw(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)Lcom/j256/ormlite/stmt/Where;
    .locals 7
    .param p1, "rawStatement"    # Ljava/lang/String;
    .param p2, "args"    # [Lcom/j256/ormlite/stmt/ArgumentHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    move-object v1, p2

    .local v1, "arr$":[Lcom/j256/ormlite/stmt/ArgumentHolder;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 448
    .local v0, "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    invoke-interface {v0}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getColumnName()Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "columnName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 450
    invoke-interface {v0}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v5

    if-nez v5, :cond_1

    .line 451
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Either the column name or SqlType must be set on each argument"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 454
    :cond_0
    invoke-direct {p0, v2}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/j256/ormlite/stmt/ArgumentHolder;->setMetaInfo(Lcom/j256/ormlite/field/FieldType;)V

    .line 447
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    .end local v2    # "columnName":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/j256/ormlite/stmt/query/Raw;

    invoke-direct {v5, p1, p2}, Lcom/j256/ormlite/stmt/query/Raw;-><init>(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)V

    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 458
    return-object p0
.end method

.method public rawComparison(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "rawOperator"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->findColumnFieldType(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, p2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->addClause(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 467
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->clauseStackLevel:I

    if-nez v1, :cond_0

    .line 539
    const-string v1, "empty where clause"

    .line 542
    :goto_0
    return-object v1

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/Where;->peek()Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    .line 542
    .local v0, "clause":Lcom/j256/ormlite/stmt/query/Clause;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where clause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
