/**
  A group of HTML nodes. These have no concrete representation in an HTML tree but are instead flattened.

  For example:

  ```
  <div>
    <div>1</div>
    Fragment(
      <div>2</div>
      <div>3</div>
    )
    <div>4</div>
  </div>
  ````

  Becomes

  ````
  <div>
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
  </div>
  ````
*/
public struct Fragment {
  let nodes: [Node]
  
  public init(_ nodes: Node...) {
    self.init(nodes)
  }
  
  public init(_ nodes: [Node]) {
    self.nodes = nodes
  }
}
