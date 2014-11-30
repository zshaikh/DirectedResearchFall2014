.class public Lorg/a/a/c/c;
.super Lorg/a/a/d;
.source "DistributionPointName.java"

# interfaces
.implements Lorg/a/a/c;


# instance fields
.field a:Lorg/a/a/ar;

.field b:I


# direct methods
.method public constructor <init>(Lorg/a/a/x;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lorg/a/a/d;-><init>()V

    .line 100
    invoke-virtual {p1}, Lorg/a/a/x;->e()I

    move-result v0

    iput v0, p0, Lorg/a/a/c/c;->b:I

    .line 102
    iget v0, p0, Lorg/a/a/c/c;->b:I

    if-nez v0, :cond_0

    .line 104
    invoke-static {p1, v1}, Lorg/a/a/c/e;->a(Lorg/a/a/x;Z)Lorg/a/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/c/c;->a:Lorg/a/a/ar;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {p1, v1}, Lorg/a/a/t;->a(Lorg/a/a/x;Z)Lorg/a/a/t;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/c/c;->a:Lorg/a/a/ar;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/c/c;
    .locals 3

    .prologue
    .line 40
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/c/c;

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    check-cast p0, Lorg/a/a/c/c;

    .line 46
    :goto_0
    return-object p0

    .line 44
    :cond_1
    instance-of v0, p0, Lorg/a/a/x;

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Lorg/a/a/c/c;

    check-cast p0, Lorg/a/a/x;

    invoke-direct {v0, p0}, Lorg/a/a/c/c;-><init>(Lorg/a/a/x;)V

    move-object p0, v0

    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/a/a/x;Z)Lorg/a/a/c/c;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/a/a/x;->a(Lorg/a/a/x;Z)Lorg/a/a/x;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/c/c;->a(Ljava/lang/Object;)Lorg/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    const-string v0, "    "

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    return-void
.end method


# virtual methods
.method public d()Lorg/a/a/bd;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lorg/a/a/bp;

    const/4 v1, 0x0

    iget v2, p0, Lorg/a/a/c/c;->b:I

    iget-object v3, p0, Lorg/a/a/c/c;->a:Lorg/a/a/ar;

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/a/a/c/c;->b:I

    return v0
.end method

.method public f()Lorg/a/a/d;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/a/a/c/c;->a:Lorg/a/a/ar;

    check-cast v0, Lorg/a/a/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget v2, p0, Lorg/a/a/c/c;->b:I

    if-nez v2, :cond_0

    .line 125
    const-string v2, "fullName"

    iget-object v3, p0, Lorg/a/a/c/c;->a:Lorg/a/a/ar;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/a/a/c/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const-string v2, "nameRelativeToCRLIssuer"

    iget-object v3, p0, Lorg/a/a/c/c;->a:Lorg/a/a/ar;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/a/a/c/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
