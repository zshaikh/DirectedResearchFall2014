.class public Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
.super Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
.source "JsonMappingException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;
    }
.end annotation


# static fields
.field static final MAX_REFS_TO_LIST:I = 0x3e8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/flurry/org/codehaus/jackson/JsonLocation;
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public static from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 2
    .param p0, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public static from(Lcom/flurry/org/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 2
    .param p0, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "problem"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/flurry/org/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 5
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "ref"    # Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    .prologue
    .line 208
    instance-of v3, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    if-eqz v3, :cond_0

    .line 209
    move-object v0, p0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-object v1, v0

    .line 220
    .local v1, "jme":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 221
    return-object v1

    .line 211
    .end local v1    # "jme":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 216
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    :cond_2
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/flurry/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    .restart local v1    # "jme":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    goto :goto_0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "refFrom"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "refFrom"    # Ljava/lang/Object;
    .param p2, "refFieldName"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _appendPathDesc(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Lcom/flurry/org/codehaus/jackson/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    move-object v2, v0

    .line 304
    :goto_0
    return-object v2

    .line 295
    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 301
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_1
    const-string v2, " (through reference chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0, v1}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_appendPathDesc(Ljava/lang/StringBuilder;)V

    .line 303
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 295
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public prependPath(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)V
    .locals 2
    .param p1, "r"    # Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 269
    :cond_1
    return-void
.end method

.method public prependPath(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 253
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    .line 254
    .local v0, "ref":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 255
    return-void
.end method

.method public prependPath(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .local v0, "ref":Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/flurry/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
