.class public Lcom/j256/ormlite/misc/JavaxPersistence;
.super Ljava/lang/Object;
.source "JavaxPersistence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFieldConfig(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 18
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, "columnAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v8, 0x0

    .line 28
    .local v8, "idAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v6, 0x0

    .line 29
    .local v6, "generatedValueAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v11, 0x0

    .line 30
    .local v11, "oneToOneAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v10, 0x0

    .line 31
    .local v10, "manyToOneAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v9, 0x0

    .line 32
    .local v9, "joinColumnAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v4, 0x0

    .line 33
    .local v4, "enumeratedAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v13, 0x0

    .line 35
    .local v13, "versionAnnotation":Ljava/lang/annotation/Annotation;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move-object v15, v13

    .end local v13    # "versionAnnotation":Ljava/lang/annotation/Annotation;
    .local v15, "versionAnnotation":Ljava/lang/annotation/Annotation;
    move-object v14, v11

    .end local v11    # "oneToOneAnnotation":Ljava/lang/annotation/Annotation;
    .local v14, "oneToOneAnnotation":Ljava/lang/annotation/Annotation;
    move-object v11, v9

    .end local v9    # "joinColumnAnnotation":Ljava/lang/annotation/Annotation;
    .local v11, "joinColumnAnnotation":Ljava/lang/annotation/Annotation;
    move-object v13, v10

    .end local v10    # "manyToOneAnnotation":Ljava/lang/annotation/Annotation;
    .local v13, "manyToOneAnnotation":Ljava/lang/annotation/Annotation;
    move v9, v7

    .end local v7    # "i$":I
    .local v9, "i$":I
    move-object v10, v8

    .end local v8    # "idAnnotation":Ljava/lang/annotation/Annotation;
    .local v10, "idAnnotation":Ljava/lang/annotation/Annotation;
    move-object v8, v6

    .end local v6    # "generatedValueAnnotation":Ljava/lang/annotation/Annotation;
    .local v8, "generatedValueAnnotation":Ljava/lang/annotation/Annotation;
    move-object v7, v4

    .end local v4    # "enumeratedAnnotation":Ljava/lang/annotation/Annotation;
    .local v7, "enumeratedAnnotation":Ljava/lang/annotation/Annotation;
    move-object v6, v3

    .end local v3    # "columnAnnotation":Ljava/lang/annotation/Annotation;
    .local v6, "columnAnnotation":Ljava/lang/annotation/Annotation;
    :goto_0
    if-ge v9, v12, :cond_7

    aget-object v3, v5, v9

    .line 36
    .local v3, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 37
    .local v4, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "javax.persistence.Column"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 38
    move-object v6, v3

    .line 40
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "javax.persistence.Id"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 41
    move-object v10, v3

    .line 43
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "javax.persistence.GeneratedValue"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 44
    move-object v8, v3

    .line 46
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "javax.persistence.OneToOne"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 47
    move-object v14, v3

    .line 49
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "javax.persistence.ManyToOne"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 50
    move-object v13, v3

    .line 52
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "javax.persistence.JoinColumn"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 53
    move-object v11, v3

    .line 55
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "javax.persistence.Enumerated"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 56
    move-object v7, v3

    .line 58
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v16, "javax.persistence.Version"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 59
    move-object v3, v3

    .end local v15    # "versionAnnotation":Ljava/lang/annotation/Annotation;
    .local v3, "versionAnnotation":Ljava/lang/annotation/Annotation;
    move-object v4, v3

    .line 35
    .end local v3    # "versionAnnotation":Ljava/lang/annotation/Annotation;
    .local v4, "versionAnnotation":Ljava/lang/annotation/Annotation;
    :goto_1
    add-int/lit8 v3, v9, 0x1

    .end local v9    # "i$":I
    .local v3, "i$":I
    move v9, v3

    .end local v3    # "i$":I
    .restart local v9    # "i$":I
    move-object v15, v4

    .end local v4    # "versionAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v15    # "versionAnnotation":Ljava/lang/annotation/Annotation;
    goto :goto_0

    .line 63
    :cond_7
    if-nez v6, :cond_8

    if-nez v10, :cond_8

    if-nez v14, :cond_8

    if-nez v13, :cond_8

    if-nez v7, :cond_8

    if-nez v15, :cond_8

    .line 65
    const/16 p0, 0x0

    .line 160
    .end local v5    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local p0    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    :goto_2
    return-object p0

    .line 68
    .restart local v5    # "arr$":[Ljava/lang/annotation/Annotation;
    .restart local p0    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    :cond_8
    new-instance v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 69
    .local v3, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "fieldName":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/j256/ormlite/db/DatabaseType;->isEntityNamesMustBeUpCase()Z

    move-result p0

    .end local p0    # "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    if-eqz p0, :cond_18

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 73
    .end local v4    # "fieldName":Ljava/lang/String;
    .local p0, "fieldName":Ljava/lang/String;
    :goto_3
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFieldName(Ljava/lang/String;)V

    .line 75
    if-eqz v6, :cond_c

    .line 77
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .end local p0    # "fieldName":Ljava/lang/String;
    const-string v4, "name"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .end local v5    # "arr$":[Ljava/lang/annotation/Annotation;
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 78
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/String;

    .line 79
    .local p0, "name":Ljava/lang/String;
    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 80
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 82
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    const-string v4, "columnDefinition"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 83
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/String;

    .line 84
    .local p0, "columnDefinition":Ljava/lang/String;
    if-eqz p0, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 85
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    .line 87
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .end local p0    # "columnDefinition":Ljava/lang/String;
    const-string v4, "length"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 88
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v4, "nullable"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 90
    .restart local p0    # "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/Boolean;

    .line 91
    .local p0, "nullable":Ljava/lang/Boolean;
    if-eqz p0, :cond_b

    .line 92
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .end local p0    # "nullable":Ljava/lang/Boolean;
    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 94
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v4, "unique"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 95
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/Boolean;

    .line 96
    .local p0, "unique":Ljava/lang/Boolean;
    if-eqz p0, :cond_c

    .line 97
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .end local p0    # "unique":Ljava/lang/Boolean;
    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_c
    if-eqz v10, :cond_d

    .line 105
    if-nez v8, :cond_15

    .line 106
    const/16 p0, 0x1

    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    .line 112
    :cond_d
    :goto_4
    if-nez v14, :cond_e

    if-eqz v13, :cond_11

    .line 113
    :cond_e
    const/16 p0, 0x1

    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    .line 114
    if-eqz v11, :cond_11

    .line 116
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v4, "name"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 117
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/String;

    .line 118
    .local p0, "name":Ljava/lang/String;
    if-eqz p0, :cond_f

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 119
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 121
    :cond_f
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    const-string v4, "nullable"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 122
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/Boolean;

    .line 123
    .local p0, "nullable":Ljava/lang/Boolean;
    if-eqz p0, :cond_10

    .line 124
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .end local p0    # "nullable":Ljava/lang/Boolean;
    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    .line 126
    :cond_10
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v4, "unique"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 127
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "method":Ljava/lang/reflect/Method;
    check-cast p0, Ljava/lang/Boolean;

    .line 128
    .local p0, "unique":Ljava/lang/Boolean;
    if-eqz p0, :cond_11

    .line 129
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .end local p0    # "unique":Ljava/lang/Boolean;
    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :cond_11
    if-eqz v7, :cond_12

    .line 139
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v4, "value"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 140
    .local p0, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 141
    .local p0, "typeValue":Ljava/lang/Object;
    if-eqz p0, :cond_16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "typeValue":Ljava/lang/Object;
    const-string v4, "STRING"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 142
    sget-object p0, Lcom/j256/ormlite/field/DataType;->ENUM_STRING:Lcom/j256/ormlite/field/DataType;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    :cond_12
    :goto_5
    if-eqz v15, :cond_13

    .line 153
    const/16 p0, 0x1

    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    .line 155
    :cond_13
    invoke-virtual {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object p0

    if-nez p0, :cond_14

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/j256/ormlite/field/DataPersisterManager;->lookupForField(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object p0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataPersister(Lcom/j256/ormlite/field/DataPersister;)V

    .line 158
    :cond_14
    const/16 p0, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findGetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_17

    const/16 p0, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findSetMethod(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_17

    const/16 p0, 0x1

    :goto_6
    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    move-object/from16 p0, v3

    .line 160
    goto/16 :goto_2

    .line 99
    :catch_0
    move-exception p0

    .line 100
    .local p0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem accessing fields from the @Column annotation for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p0

    .end local p0    # "e":Ljava/lang/Exception;
    throw p0

    .line 109
    .restart local v3    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    :cond_15
    const/16 p0, 0x1

    move-object v0, v3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    goto/16 :goto_4

    .line 131
    :catch_1
    move-exception p0

    .line 132
    .restart local p0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem accessing fields from the @JoinColumn annotation for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p0

    .end local p0    # "e":Ljava/lang/Exception;
    throw p0

    .line 144
    .restart local v3    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    :cond_16
    :try_start_3
    sget-object p0, Lcom/j256/ormlite/field/DataType;->ENUM_INTEGER:Lcom/j256/ormlite/field/DataType;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 146
    :catch_2
    move-exception p0

    .line 147
    .restart local p0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem accessing fields from the @Enumerated annotation for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p0

    .end local p0    # "e":Ljava/lang/Exception;
    throw p0

    .line 158
    .restart local v3    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .restart local p1    # "field":Ljava/lang/reflect/Field;
    :cond_17
    const/16 p0, 0x0

    goto :goto_6

    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/annotation/Annotation;
    :cond_18
    move-object/from16 p0, v4

    .end local v4    # "fieldName":Ljava/lang/String;
    .local p0, "fieldName":Ljava/lang/String;
    goto/16 :goto_3

    .local v3, "annotation":Ljava/lang/annotation/Annotation;
    .local p0, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    :cond_19
    move-object v4, v15

    .end local v15    # "versionAnnotation":Ljava/lang/annotation/Annotation;
    .local v4, "versionAnnotation":Ljava/lang/annotation/Annotation;
    goto/16 :goto_1
.end method

.method public static getEntityName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, "entityAnnotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 170
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 171
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "javax.persistence.Entity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 172
    move-object v4, v0

    .line 169
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    if-nez v4, :cond_2

    move-object v9, v12

    .line 185
    :goto_1
    return-object v9

    .line 180
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "name"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 181
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 182
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lez v9, :cond_3

    move-object v9, v8

    .line 183
    goto :goto_1

    :cond_3
    move-object v9, v12

    .line 185
    goto :goto_1

    .line 187
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "name":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not get entity name from class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method
