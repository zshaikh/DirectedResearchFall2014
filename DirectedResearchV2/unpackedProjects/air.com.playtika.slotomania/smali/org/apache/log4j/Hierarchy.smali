.class public Lorg/apache/log4j/Hierarchy;
.super Ljava/lang/Object;
.source "Hierarchy.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerRepository;
.implements Lorg/apache/log4j/spi/RendererSupport;


# instance fields
.field private defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field emittedNoAppenderWarning:Z

.field emittedNoResourceBundleWarning:Z

.field ht:Ljava/util/Hashtable;

.field private listeners:Ljava/util/Vector;

.field rendererMap:Lorg/apache/log4j/or/RendererMap;

.field root:Lorg/apache/log4j/Logger;

.field threshold:Lorg/apache/log4j/Level;

.field thresholdInt:I


# direct methods
.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 2
    .param p1, "root"    # Lorg/apache/log4j/Logger;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 78
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoResourceBundleWarning:Z

    .line 88
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    .line 89
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    .line 90
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    .line 92
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 93
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 94
    new-instance v0, Lorg/apache/log4j/or/RendererMap;

    invoke-direct {v0}, Lorg/apache/log4j/or/RendererMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    .line 95
    new-instance v0, Lorg/apache/log4j/DefaultCategoryFactory;

    invoke-direct {v0}, Lorg/apache/log4j/DefaultCategoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 96
    return-void
.end method

.method private final updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V
    .locals 5
    .param p1, "pn"    # Lorg/apache/log4j/ProvisionNode;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 541
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 543
    .local v2, "last":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 544
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;

    .line 549
    .local v1, "l":Lorg/apache/log4j/Logger;
    iget-object v3, v1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    iget-object v3, v3, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 550
    iget-object v3, v1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    iput-object v3, p2, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 551
    iput-object p2, v1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 543
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v1    # "l":Lorg/apache/log4j/Logger;
    :cond_1
    return-void
.end method

.method private final updateParents(Lorg/apache/log4j/Logger;)V
    .locals 13
    .param p1, "cat"    # Lorg/apache/log4j/Logger;

    .prologue
    const/16 v12, 0x2e

    const/4 v11, 0x1

    .line 485
    iget-object v4, p1, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    .line 486
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 487
    .local v3, "length":I
    const/4 v6, 0x0

    .line 492
    .local v6, "parentFound":Z
    sub-int v9, v3, v11

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 494
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 497
    .local v8, "substr":Ljava/lang/String;
    new-instance v2, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v2, v8}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, "key":Lorg/apache/log4j/CategoryKey;
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 500
    .local v5, "o":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 502
    new-instance v7, Lorg/apache/log4j/ProvisionNode;

    invoke-direct {v7, p1}, Lorg/apache/log4j/ProvisionNode;-><init>(Lorg/apache/log4j/Logger;)V

    .line 503
    .local v7, "pn":Lorg/apache/log4j/ProvisionNode;
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v9, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "pn":Lorg/apache/log4j/ProvisionNode;
    :goto_1
    sub-int v9, v1, v11

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_0

    .line 504
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v9, v5, Lorg/apache/log4j/Category;

    if-eqz v9, :cond_3

    .line 505
    const/4 v6, 0x1

    .line 506
    check-cast v5, Lorg/apache/log4j/Category;

    .end local v5    # "o":Ljava/lang/Object;
    iput-object v5, p1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 518
    .end local v2    # "key":Lorg/apache/log4j/CategoryKey;
    .end local v8    # "substr":Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_2

    .line 519
    iget-object v9, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    iput-object v9, p1, Lorg/apache/log4j/Category;->parent:Lorg/apache/log4j/Category;

    .line 520
    :cond_2
    return-void

    .line 509
    .restart local v2    # "key":Lorg/apache/log4j/CategoryKey;
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v8    # "substr":Ljava/lang/String;
    :cond_3
    instance-of v9, v5, Lorg/apache/log4j/ProvisionNode;

    if-eqz v9, :cond_4

    .line 510
    check-cast v5, Lorg/apache/log4j/ProvisionNode;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 512
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "unexpected object type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " in ht."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/log4j/spi/HierarchyEventListener;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "Ignoring attempt to add an existent listener."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1
    .param p1, "classToRender"    # Ljava/lang/Class;
    .param p2, "or"    # Lorg/apache/log4j/or/ObjectRenderer;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 104
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 128
    return-void
.end method

.method public emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
    .locals 2
    .param p1, "cat"    # Lorg/apache/log4j/Category;

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No appenders could be found for logger ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 136
    const-string v0, "Please initialize the log4j system properly."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 139
    :cond_0
    return-void
.end method

.method public exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    new-instance v2, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v2, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/log4j/Logger;

    if-eqz v1, :cond_0

    .line 152
    check-cast v0, Lorg/apache/log4j/Logger;

    .end local v0    # "o":Ljava/lang/Object;
    move-object v1, v0

    .line 154
    :goto_0
    return-object v1

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 4
    .param p1, "logger"    # Lorg/apache/log4j/Category;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 188
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 191
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 192
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 193
    .local v1, "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->addAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    .end local v1    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method fireRemoveAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 4
    .param p1, "logger"    # Lorg/apache/log4j/Category;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 199
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 202
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 203
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 204
    .local v1, "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    invoke-interface {v1, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->removeAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    .end local v1    # "listener":Lorg/apache/log4j/spi/HierarchyEventListener;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method public getCurrentCategories()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoggers()Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 305
    new-instance v2, Ljava/util/Vector;

    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 307
    .local v2, "v":Ljava/util/Vector;
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 308
    .local v0, "elems":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 310
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/Hierarchy;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/log4j/spi/LoggerFactory;

    .prologue
    .line 262
    new-instance v0, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v0, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "key":Lorg/apache/log4j/CategoryKey;
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v3

    .line 269
    :try_start_0
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 270
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 271
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 272
    .local v1, "logger":Lorg/apache/log4j/Logger;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 273
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0, v1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 275
    monitor-exit v3

    move-object v3, v1

    .line 289
    .end local v1    # "logger":Lorg/apache/log4j/Logger;
    .end local v2    # "o":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 276
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v4, v2, Lorg/apache/log4j/Logger;

    if-eqz v4, :cond_1

    .line 277
    check-cast v2, Lorg/apache/log4j/Logger;

    .end local v2    # "o":Ljava/lang/Object;
    monitor-exit v3

    move-object v3, v2

    goto :goto_0

    .line 278
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lorg/apache/log4j/ProvisionNode;

    if-eqz v4, :cond_2

    .line 280
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 281
    .restart local v1    # "logger":Lorg/apache/log4j/Logger;
    invoke-virtual {v1, p0}, Lorg/apache/log4j/Category;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 282
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    check-cast v2, Lorg/apache/log4j/ProvisionNode;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-direct {p0, v2, v1}, Lorg/apache/log4j/Hierarchy;->updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V

    .line 284
    invoke-direct {p0, v1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 285
    monitor-exit v3

    move-object v3, v1

    goto :goto_0

    .line 289
    .end local v1    # "logger":Lorg/apache/log4j/Logger;
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .line 291
    .end local v2    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRendererMap()Lorg/apache/log4j/or/RendererMap;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Level;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public isDisabled(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 352
    iget v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideAsNeeded(Ljava/lang/String;)V
    .locals 1
    .param p1, "override"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v0, "The Hiearchy.overrideAsNeeded method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public resetConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 380
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    .line 381
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {v2, v4}, Lorg/apache/log4j/Category;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 382
    sget-object v2, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 386
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v2

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->shutdown()V

    .line 389
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 390
    .local v1, "cats":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 392
    .local v0, "c":Lorg/apache/log4j/Logger;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    .line 393
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/log4j/Category;->setResourceBundle(Ljava/util/ResourceBundle;)V

    goto :goto_0

    .line 396
    .end local v0    # "c":Lorg/apache/log4j/Logger;
    .end local v1    # "cats":Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "cats":Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v2}, Lorg/apache/log4j/or/RendererMap;->clear()V

    .line 398
    return-void
.end method

.method public setDisableOverride(Ljava/lang/String;)V
    .locals 1
    .param p1, "override"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v0, "The Hiearchy.setDisableOverride method has been deprecated."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1
    .param p1, "renderedClass"    # Ljava/lang/Class;
    .param p2, "renderer"    # Lorg/apache/log4j/or/ObjectRenderer;

    .prologue
    .line 417
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    .line 418
    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .locals 3
    .param p1, "levelStr"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    .line 164
    .local v0, "l":Lorg/apache/log4j/Level;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not convert ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] to Level."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setThreshold(Lorg/apache/log4j/Level;)V
    .locals 1
    .param p1, "l"    # Lorg/apache/log4j/Level;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget v0, p1, Lorg/apache/log4j/Priority;->level:I

    iput v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    .line 182
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    .line 184
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 5

    .prologue
    .line 439
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 442
    .local v2, "root":Lorg/apache/log4j/Logger;
    invoke-virtual {v2}, Lorg/apache/log4j/Category;->closeNestedAppenders()V

    .line 444
    iget-object v3, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v3

    .line 445
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 446
    .local v1, "cats":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 448
    .local v0, "c":Lorg/apache/log4j/Logger;
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->closeNestedAppenders()V

    goto :goto_0

    .line 458
    .end local v0    # "c":Lorg/apache/log4j/Logger;
    .end local v1    # "cats":Ljava/util/Enumeration;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 452
    .restart local v1    # "cats":Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 453
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v1

    .line 454
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Logger;

    .line 456
    .restart local v0    # "c":Lorg/apache/log4j/Logger;
    invoke-virtual {v0}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    goto :goto_1

    .line 458
    .end local v0    # "c":Lorg/apache/log4j/Logger;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    return-void
.end method
