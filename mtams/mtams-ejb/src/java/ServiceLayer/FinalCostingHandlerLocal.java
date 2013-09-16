/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ServiceLayer;

import Entities.Finalcosting;
import javax.ejb.Local;

/**
 *
 * @author aaron
 */
@Local
public interface FinalCostingHandlerLocal {

    public void persistFinalcosting(Finalcosting finalcosting);

    public void updateFinalcosting(Finalcosting finalcosting, Integer finalcostingID);

    public Finalcosting findFinalcosting(Integer id);
}
